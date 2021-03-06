package com.abhishek.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.abhishek.springdemo.entity.Customer;
import com.abhishek.springdemo.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerContoller {
	
	//need to inject our customer service
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/list")
	public String listCustomers(Model theModel) {
		
		// get customers from the service
		List<Customer> theCustomers = customerService.getCustomers();
		
		//add the customers to the model
		theModel.addAttribute("customers", theCustomers);
		return "list-customers";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		Customer theCustomers = new Customer();
		
		theModel.addAttribute("customers", theCustomers);
		
		return "customer-form";
	}
	
	@PostMapping("/processForm")
	public String processForm(@ModelAttribute("customers") Customer theCustomers) {
		
		customerService.saveCustomer(theCustomers);
		
		return "redirect:/customer/list";
	}
	
	@GetMapping("/updateForm")
	public String updateForm(@RequestParam ("customerId") int theInt, Model theModel) {
		
		//get the customer from the service
		Customer theCustomers = customerService.getCustomer(theInt);
		
		//set customer as a model attribute to pre-populate the form
		theModel.addAttribute("customers", theCustomers);
		
		//send over to the form
		return "customer-form";
	}
	
	@GetMapping("/deleteForm")
	public String deleteForm(@RequestParam("customerId") int theId) {
		
		//get the customer from the service
		customerService.deleteCustomer(theId);
		
		return "redirect:/customer/list";
		
	}
	
}
