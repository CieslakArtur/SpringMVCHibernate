package com.websystique.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.websystique.springmvc.model.Employee;
import com.websystique.springmvc.service.EmployeeService;

@Controller
@RequestMapping("/")
public class AppController {
	@Autowired
	EmployeeService service;
	
	@Autowired
	MessageSource messageSource;
	
	/*
	 * This method will list all existing employees
	 */
	@RequestMapping(value= {"/","/list"}, method=RequestMethod.GET)
	public String listEmployees(ModelMap model) {
		List<Employee> employees=service.findAllEmployees();
		model.addAttribute("employees",employees);
		return "allEmployees";
	}
	
	/*
	 * This method will provide the medium to add a new employee
	 */
	@RequestMapping(value= {"/new"}, method=RequestMethod.GET)
	public String newEmployee(ModelMap model) {
		Employee employee=new Employee();
		model.addAttribute("employee",employee);
		model.addAttribute("edit",false);
		return "registration";
	}
}