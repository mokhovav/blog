package com.mokhovav.blog.exceptions;

import com.mokhovav.blog.Message;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;

@Component
@Scope(value = "prototype")
public class BlogException extends RestException{
    private Message errorMessage;

    public BlogException() {
    }

    public BlogException(Message errorMessage) {
        this.errorMessage = errorMessage;
    }

    @Override
    public String getMsg() {
        return null;
    }

    @Override
    public Object getResponse() {
        return errorMessage;
    }

    @Override
    public HttpStatus getStatus() {
        return HttpStatus.BAD_REQUEST;
    }

    public Message getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(Message errorMessage) {
        this.errorMessage = errorMessage;
    }
}
