package com.mokhovav.blog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@Controller
public class BlogController {

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String viewHome(
            @CookieValue(value = "blogPage", defaultValue = "0") int blogPage,
            HttpServletResponse response
    ){
        Cookie cookie = new Cookie("blogPage", String.valueOf(blogPage));
        response.addCookie(cookie);

        return "index";
    }


}
