package com.example.Hello.World;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Hello {

    @GetMapping("/greet")
    public String greet(){
        return "Hello Tarun";
    }
}
