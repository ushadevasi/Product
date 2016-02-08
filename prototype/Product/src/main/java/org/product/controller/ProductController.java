package org.product.controller;

import java.util.ArrayList;
import java.util.List;

import org.product.model.Comment;
import org.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("contact")
	public ModelAndView contact(Model model){
		ModelAndView mv=new ModelAndView();
		model.addAttribute("comment",new Comment());
		mv.setViewName("contact");

		return mv;
	}
	
	
	@RequestMapping("home")
	public ModelAndView homePage(Model model){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		model.addAttribute("comment",new Comment());
		return mv;
	}
	
	
	
	@RequestMapping("product")
	public ModelAndView productPage(Model model){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("product");
		return mv;
	}
	
	@RequestMapping("productInfo")
	public ModelAndView productInfo(@RequestParam("productId") int productId,Model model){
		ModelAndView mv=new ModelAndView();
		mv.addObject("productId", productId);
		mv.setViewName("productInfo");
		return mv;
	}
	
	@RequestMapping(value="save",method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("comment") Comment comment){
		
		productService.addComments(comment);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
		
	}
	
	@RequestMapping(value="comments",method=RequestMethod.GET,produces={"application/json"})
	public @ResponseBody List<Comment> getAllComments(){
		
		List<Comment> commentList=null;
		commentList=productService.getAllComments();
		return commentList;
	}

}
