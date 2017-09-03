package com.abhishek.springdemo.service;

import java.util.List;

import com.abhishek.springdemo.entity.Customer;

public interface CustomerService {
	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomers);

}
