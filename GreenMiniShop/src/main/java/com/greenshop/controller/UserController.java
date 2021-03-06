package com.greenshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.greenshop.dto.CategoryDTO;
import com.greenshop.dto.ImageDTO;
import com.greenshop.dto.TreeDTO;
import com.greenshop.service.CategoryService;
import com.greenshop.service.ImageService;
import com.greenshop.service.TreeService;

@Controller
public class UserController {
	@Autowired
	private CategoryService categoryServ;

//	@Autowired
//	private ImageService imageServ;

	@Autowired
	private TreeService treeServ;
	
	@GetMapping(value = { "/", "/Trang-chu" })
	public String index(Model model) {
//		model.addAttribute("img", imageServ.findAll());
		model.addAttribute("category", categoryServ.findAll());
		model.addAttribute("trees",treeServ.findIndex());
		return "user/index";
	}

	@GetMapping("/user/login")
	public String login(Model model) {
		return "user/login";
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
		model.addAttribute("trees",treeServ.findAll());
		return "user/shop";
	}

}
