package com.mokhovav.blog.database;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class PostService{
    @Autowired
    private DAOService service;

    public void addPost(String str) {
            Post post = new Post();
            post.setTime(new Date().getTime());
            post.setPost(str);
            service.save(post);
    }

    public List<Post> getPosts(){
        List<Post> list = service.findAll(Post.class);
        return list;
    }
}
