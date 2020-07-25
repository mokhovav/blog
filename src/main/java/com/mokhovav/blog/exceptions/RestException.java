package com.mokhovav.blog.exceptions;

import org.springframework.http.HttpStatus;

public abstract class RestException extends Exception {
    public RestException() {
    }

    public RestException(String message) {
        super(message);
    }

    public abstract String getMsg();
    public abstract Object getResponse();
    public abstract HttpStatus getStatus();
}
