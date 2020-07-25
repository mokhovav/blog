package com.mokhovav.blog;

import com.mokhovav.blog.database.PostService;
import com.mokhovav.blog.exceptions.BlogException;
import com.mokhovav.blog.exceptions.RestException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BlogRestController {
    @Autowired
    private PostService postService;

    @Autowired
    private MessageService messageService;

    @PostMapping("/newPost")
    public Message newPost() {
        return messageService.getMessage(0, 5);
    }

    @PostMapping("/newPost/{text}")
    public Message newPost(@PathVariable(required = false) String text) throws RestException {
        if (text == null || text.isEmpty()) throw new BlogException(messageService.getMessage(0, 5));
        postService.addPost(text);
        return messageService.getMessage(0, 5);
    }

    @PostMapping("/getPosts/{pageNumber}")
    public Message getPosts(
            @PathVariable int pageNumber
    ) throws BlogException {
        if (pageNumber < 0) throw new BlogException(messageService.getMessage(pageNumber, 5));
        return messageService.getMessage(pageNumber, 5);
    }
}
