package com.mokhovav.blog;

import com.mokhovav.blog.database.Post;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class Message {
    private List<Post> dataList;
    private String error;
    private String message;

    public Message() {
    }

    public Message(List<Post> dataList, String error, String message) {
        this.dataList = dataList;
        this.error = error;
        this.message = message;
    }

    public List<Post> getDataList() {
        return dataList;
    }

    public void setDataList(List<Post> dataList) {
        this.dataList = dataList;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
