package com.greenshop.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.greenshop.dto.TreeDTO;
import com.greenshop.service.CategoryService;
import com.greenshop.service.TreeService;
import com.greenshop.utils.WebUtils;

@Controller
public class UserController {
	@Autowired
	private CategoryService categoryServ;

//	@Autowired
//	private ImageService imageServ;

	@Autowired
	private TreeService treeServ;

	@GetMapping(value = { "/", "/trang-chu" })
	public String index(Model model, Principal principal) {
//		model.addAttribute("img", imageServ.findAll());
		model.addAttribute("category", categoryServ.findAll());
		model.addAttribute("trees", treeServ.findIndex());
		
		return "user/index";
	}

	@GetMapping("/login")
	public String login(Model model) {
		return "user/login";
	}

	@RequestMapping(value = "/trang", method = RequestMethod.GET)
	public String userInfo(Model model, Principal principal) {

		// Sau khi user login thanh cong se co principal
		String userName = principal.getName();

		System.out.println("User Name: " + userName);

		User loginedUser = (User) ((Authentication) principal).getPrincipal();

		String userInfo = WebUtils.toString(loginedUser);
		model.addAttribute("userInfo", principal.getName());

		return "user/sinup";
	}	
	
	@GetMapping("/user/about")
	public String about(Model model) {

		return "user/about";
	}

	@GetMapping("/user/cart")
	public String cart(Model model) {
		return "user/cart";
	}

	@GetMapping("/user/checkout")
	public String checkout(Model model) {
		return "user/checkout";
	}

	@GetMapping("/user/contact")
	public String contactUs(Model model) {
		return "user/contact-us";
	}

	@GetMapping("/user/my-account")
	public String myAccout(Model model) {
		return "user/my-accoutn";
	}

	@GetMapping("/user/service")
	public String service(Model model) {
		return "user/service";
	}

	@GetMapping("/user/detail")
	public String detail(@RequestParam("id") Long id, Model model) {
		TreeDTO tree = treeServ.findById(id);
		model.addAttribute("tree", tree);
		return "user/shop-detail";
	}

	@GetMapping("/user/shop")
	public String shop(Model model) {
		model.addAttribute("category", categoryServ.findAll());
		model.addAttribute("trees", treeServ.findAll());
		return "user/shop";
	}
	
	@GetMapping("/sinup")
	public String sinup() {
		
		return "user/sinup";
	}
	@PostMapping("/sinup")
	public String saveUser() {
		
		return "user/sinup";
	}
}
