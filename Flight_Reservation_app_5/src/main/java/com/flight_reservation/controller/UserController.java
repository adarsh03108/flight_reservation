package com.flight_reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.flight_reservation.entity.User;
import com.flight_reservation.repository.UserRepository;

@Controller
public class UserController {
	@Autowired
	private UserRepository userRepo;
	
	@RequestMapping("/showLoginPage")
	public String showLoginPage() {
		return "login/login";
	}
	
	@RequestMapping("/showReg")
	public String showReg() {
		return "login/showReg";
	}
	
	@RequestMapping("/saveReg")
	public String saveReg(@ModelAttribute("user")User user) {
		userRepo.save(user);
		return "login/login";
	}
	
	@RequestMapping("/verifyLogin")
	public String verifyLogin(@RequestParam("emailId")String emailId,@RequestParam("password")String password,ModelMap model){
//		System.out.println(emailId);
//		System.out.println(password);
		User user = userRepo.readByEmail(emailId);
		if(user!=null) {
//		System.out.println(user.getEmail());
//		System.out.println(user.getPassword());
		
		if(user.getEmail().equals(emailId) && user.getPassword().equals(password)) {
			return "findFlights";
		}else {
			model.addAttribute("error", "invalid username/password");
			return "login/login";
		}
		}else {
			model.addAttribute("error", "invalid username/password");
			return "login/login";
			
		}
	}

}
