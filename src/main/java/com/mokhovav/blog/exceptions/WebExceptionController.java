package com.mokhovav.blog.exceptions;

import com.mokhovav.blog.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice(annotations = Controller.class)
public class WebExceptionController {
    @Autowired
    private Logger logger;

    @ExceptionHandler(WebException.class)
    private void responseEntity(HttpServletRequest req, WebException exception){
        logger.info("\033[34mWebException: \033[0m"+exception.getMsg());
    }
}
