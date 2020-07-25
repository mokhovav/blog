package com.mokhovav.blog.logging;

import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

@Component("Slf4jLogger")
@Primary
public class Slf4jLogger implements Logger{
    private static org.slf4j.Logger logger;

    public Slf4jLogger() {
        logger = LoggerFactory.getLogger(this.getClass());
    }

    @Override
    public void info(String str) {
        logger.info(str);
    }

    @Override
    public void debug(String str) {
        logger.debug(str);
    }

    @Override
    public void error(String str) {
        logger.error(str);
    }
}
