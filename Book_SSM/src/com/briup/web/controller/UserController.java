package com.briup.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.briup.bean.User;
import com.briup.service.IUserService;

@RequestMapping("/User")
@Controller
public class UserController {
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String add(User user,RedirectAttributes redirectAttributes){
		System.out.println("User="+user);
		try{
			userService.register(user);
			redirectAttributes.addFlashAttribute("mag","注册成功");
		}catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("msg", "注册失败!");
			return "redirect:/error";
		}
		return "redirect:/login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,HttpSession session,RedirectAttributes redirectAttributes){
		System.out.println(user);
		try{
			if(userService.login(user.getName(), user.getPassword())){
				redirectAttributes.addFlashAttribute("mag","登录成功");
				session.setAttribute("my_user", user);
			}else{
				redirectAttributes.addFlashAttribute("msg", "登录失败!");
				return "redirect:/error";
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/index";
	}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	public String update(User user){
		System.out.println(user);
		try {
			userService.update(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/login";
	}
	
}
