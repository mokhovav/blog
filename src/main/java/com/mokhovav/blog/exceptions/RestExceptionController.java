package com.mokhovav.blog.exceptions;


import com.mokhovav.blog.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice(annotations = RestController.class)
public class RestExceptionController {
    @Autowired
    private Logger logger;

    @ExceptionHandler(RestException.class)
    private ResponseEntity<?> responseEntity(RestException exception, HttpServletRequest request){
        logger.info("\033[34mRestException: \033[0m"+exception.getMsg());
        return new ResponseEntity<>(exception.getResponse(), exception.getStatus());
    }
}
