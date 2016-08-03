package com.niit.shopingcart.controller;

import java.nio.file.attribute.UserPrincipalLookupService;
import java.security.Principal;

import javax.swing.SwingWorker.StateValue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.User;
import com.niit.shopingcart.model.UserDetails;
import com.niit.shopingcart.model.shipping;
import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.dao.UserDetailsDAO;

@Controller
public class UserController {
public static String U;
   @Autowired
   UserDAO userDAO;
   
   @Autowired
   UserDetailsDAO userDetailsDAO;
   
 /*   @RequestMapping("/isValidUser")
	public ModelAndView isValidUser(@RequestParam(value = "id") String name,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");

		String message;
		ModelAndView mv ;
		if (userDAO.isValidUser(name, password,true)) 
		{
			System.out.println(" Inside UserController.java");
			message = "Valid credentials";
			 mv = new ModelAndView("adminHome");
		} else {
			message = "Invalid credentials";
			 mv = new ModelAndView("login");
		}

		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}*/
	
    
    @RequestMapping("/isValidUser")
  	public String isValidUser(@RequestParam(value = "name") String name,
  			@RequestParam(value = "password") String password,Principal principal) {
  		System.out.println("in controller");
  		 U=name;
  		String message;
  		ModelAndView mv ;
                 if(userDAO.isAdmin(name))
                 {
                	 System.out.println("ADMIN LOGIN");
           			message = "WELCOME ADMIN";
           			return "redirect:/isadmin";
           			/* mv = new ModelAndView("/home"); 
           			 mv.addObject("message", message);
              		 mv.addObject("name", name);
              		*/
                 }
                 else
                 {
                	 System.out.println("user login");
                	message= "hello user";
                	System.out.println(U);
                	/* mv = new ModelAndView("/home"); 
           			 mv.addObject("message", message);
              		 mv.addObject("name", name);*/
                	return "redirect:/onLoad1";
                 }
                 
    }
                	 
                	 /*message= "HELLO USER";
                	 mv=  new ModelAndView("home");*/
               
                 /*mv.addObject("message", message);
         		mv.addObject("name", name);*/
  		/*String message;
  		ModelAndView mv ;
  		if (userDAO.isValidUser(name, password,true)) 
  			if()
  		{
  			System.out.println(" Inside UserController.java");
  			message = "Valid credentials";
  			 mv = new ModelAndView("adminHome");
  		} else {
  			message = "Invalid credentials";
  			 mv = new ModelAndView("login");
  		}

  		mv.addObject("message", message);
  		mv.addObject("name", name);
  		return mv;*/
    
        @RequestMapping("/isadmin")
		public String isadmin()
		{
		return "/admin2";	
		}
  	
    
	@RequestMapping("/register2")
	public ModelAndView registerUser2(@ModelAttribute UserDetails userDetails) {
		System.out.println(userDetails.getContactNumber());
		userDetailsDAO.saveOrUpdate(userDetails);
	  return new ModelAndView("/login");
	 }

	@RequestMapping("/register")
	public ModelAndView registerUser(@ModelAttribute UserDetails userDetails) {
		//System.out.println(userDetails.getEmail());
		System.out.println(" in register");
			
		userDAO.saveOrUpdate(userDetails);
		
	  return new ModelAndView("thankyou");
	 }
    	
    	@Autowired
    	private CategoryDAO categoryDAO;
    	@RequestMapping(value = "/onLoad1", method = RequestMethod.GET)
    	public String onLoad(Model model) {
    	System.out.println(U);
    		model.addAttribute("category", new Category());
    		model.addAttribute("categoryList", this.categoryDAO.list());
    		model.addAttribute("U",U);
    	
    		
    		System.out.println(U);
    		return "/home";
    	}
    	@RequestMapping("/ship")
    	public ModelAndView ship(@ModelAttribute  shipping ship) {
  
    		userDetailsDAO.saveOrUpdate(ship);
    	  return new ModelAndView("/thankyou4");
    	 }
}
