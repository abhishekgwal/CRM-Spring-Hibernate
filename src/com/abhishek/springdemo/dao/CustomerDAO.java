package com.abhishek.springdemo.dao;

import java.util.List;

import com.abhishek.springdemo.entity.Customer;

public interface CustomerDAO {
	
	public List<Customer> getCustomers();

	public void saveCustomers(Customer theCustomers);

}
