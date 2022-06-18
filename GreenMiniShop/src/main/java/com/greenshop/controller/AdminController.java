package com.greenshop.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.greenshop.utils.WebUtils;

@Controller
public class AdminController {
	
	@RequestMapping(value = "/admin/home", method = RequestMethod.GET)
	public String adminPage(Model model, Principal principal) {
//		model.addAttribute("userInfo", principal.getName());
		return "admin/admin";
	}
}
