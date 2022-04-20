package com.codingdojo.daikichi.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
public class DaikichiController {
	
	@RequestMapping("/")
	public String index() {
		return "Hello Daikichi Routes!";
	}
	
	@RequestMapping("/daikichi")
	public String welcome() {
		return "Welcome!";
	}
	
	@RequestMapping("/daikichi/today")
	public String today() {
		return "Today you will find luck in all your endeavors!";
	}
	
	@RequestMapping("/daikichi/tomorrow")
	public String tomorrow() {
		return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas!";
	}

	@RequestMapping("/daikichi/travel/{location}")
	public String travelLocation(@PathVariable String location) {
		return "Congratulations! You will soon travel to " + location;
	}

	@RequestMapping("/daikichi/lotto/{msgNum}")
	public String lottoMessage(@PathVariable int msgNum) {
		if ( msgNum % 2 == 0 ) {
			return "You will take a grand journey in the near future, but be weary of tempting offers";
		}
		else {
			return "You have enjoyed the fruits of your labor but now is a great time to spend time with family and friends.";
		}
	}

}
