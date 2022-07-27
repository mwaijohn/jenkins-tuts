package com.example.jenkins.tuts;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class JenkinsTutsApplication {

	public static void main(String[] args) {
		SpringApplication.run(JenkinsTutsApplication.class, args);
	}

	@GetMapping("/")
	public String home(){
		return "HOME";
	}
}
