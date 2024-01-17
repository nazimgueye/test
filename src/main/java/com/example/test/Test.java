package com.example.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController

public class Test {

    @GetMapping("/")
        public Date date(){
        return new Date();
    }

    @GetMapping("/test")
    public String test(){
        return "Hello World!";
    }
}
