package com.mokhovav.blog.exceptions;

public abstract class WebException  extends Exception{

    public WebException() {
    }

    public WebException(String message) {
        super(message);
    }

    public abstract String getMsg();
}
