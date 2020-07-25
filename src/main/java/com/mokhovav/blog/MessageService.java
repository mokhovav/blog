package com.mokhovav.blog;

import com.mokhovav.blog.database.Post;
import com.mokhovav.blog.database.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class MessageService {
    @Autowired
    private PostService postService;

    public Message getMessage(int pageNumber, int size){
        Message message = new Message();
        List<Post> list = postService.getPosts();
        list.sort((o1, o2) -> o1.compareTo(o2));
        List<Post> collect = list.stream().skip(pageNumber*size).limit(size).collect(Collectors.toCollection(LinkedList::new));
        message.setDataList(collect);
        message.setMessage("getMessage");
        return message;
    }
}
