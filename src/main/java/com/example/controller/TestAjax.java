package com.example.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ajax")
public class TestAjax {


    @GetMapping("/test")
    public String test() {
        return "请求成功";
    }

    @GetMapping("/test2")

    public String test2(@RequestBody TestAjax ajax) {
        String username = "admin";
        String password = "admin";
        return "请求成功";

    }
}