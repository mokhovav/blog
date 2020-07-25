package com.mokhovav.blog.database;

import org.hibernate.validator.constraints.Length;

import javax.persistence.MappedSuperclass;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@MappedSuperclass
public class PostData {

    @NotNull
    private long time;

    @NotBlank
    @Length(max = 200)
    private String post;

    public PostData() {
    }

    public PostData(String post) {
        this.post = post;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }
}
