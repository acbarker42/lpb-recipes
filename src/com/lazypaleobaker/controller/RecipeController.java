package com.lazypaleobaker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lazypaleobaker.entity.Recipe;
import com.lazypaleobaker.service.RecipeService;

@Controller
@RequestMapping("/recipe")
public class RecipeController {
	
	//need to inject the customer service
	@Autowired
	private RecipeService recipeService;
	
	
	@GetMapping("/list")
	public String listCustomers(Model theModel) {
		
		//get customers from the customer service
		List<Recipe> theRecipes = recipeService.getRecipes();
		
		//add the customers to the model
		theModel.addAttribute("recipes", theRecipes);
		
		//forward to jsp page
		return "list-recipes";
	}
}
