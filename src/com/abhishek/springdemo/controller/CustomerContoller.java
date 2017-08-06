package com.abhishek.springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerContoller {

	@RequestMapping("/list")
	public String listCustomers(Model theModel) {
		return "list-customers";
	}
	
}
