package com.abhishek.springdemo.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abhishek.springdemo.dao.CustomerDAO;
import com.abhishek.springdemo.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerDAO customerDAO;
	
	
	//Defines Transactions at Service layer
	@Transactional
	public List<Customer> getCustomers() {
			
		return customerDAO.getCustomers();
	}


	@Transactional
	public void saveCustomer(Customer theCustomers) {
		
	customerDAO.saveCustomers(theCustomers);
		
	}

	
	
}
