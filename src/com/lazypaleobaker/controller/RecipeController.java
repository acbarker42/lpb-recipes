package com.lazypaleobaker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lazypaleobaker.entity.Recipe;
import com.lazypaleobaker.service.RecipeService;

@Controller
@RequestMapping("/recipe")
public class RecipeController {
	
	//need to inject the recipe service
	@Autowired
	private RecipeService recipeService;
	
	
	@GetMapping("/list")
	public String listRecipes(Model theModel) {
		
		//get recipes from the recipe service
		List<Recipe> theRecipes = recipeService.getRecipes();
		
		//add the recipes to the model
		theModel.addAttribute("recipes", theRecipes);
		
		//forward to jsp page
		return "list-recipes";
	}
	@GetMapping("/showAddForm")
	public String showAddForm(Model theModel){
		
		//create model attribute to bind form data
		Recipe theRecipe = new Recipe();
		theModel.addAttribute("recipe", theRecipe);
		
		return "recipe-form";
	}
	@PostMapping("/saveRecipe")
	public String saveRecipe(@ModelAttribute("recipe") Recipe theRecipe){
		recipeService.saveRecipe(theRecipe);
		return "redirect:/recipe/list";
	}
	
	@GetMapping("/showUpdateForm")
	public String showUpdateForm(@RequestParam("recipeId") int theId, Model theModel){
		
		//get the recipe from the service
		Recipe theRecipe = recipeService.getRecipe(theId);
		
		//set recipe as a model attribute to prepoulate form
		theModel.addAttribute("recipe", theRecipe);
		//send over to our form
		
		return "recipe-form";
	}
	
	@GetMapping("/delete")
	public String deleteRecipe(@RequestParam("recipeId") int theId){
		//delete the recipe
		recipeService.deleteRecipe(theId);
		return "redirect:/recipe/list";
	}
	@PostMapping("/search")
    public String searchRecipes(@RequestParam("theSearchName") String theSearchName,
                                    Model theModel) {

        // search customers from the service
        List<Recipe> theRecipes = recipeService.searchRecipes(theSearchName);
                
        // add the customers to the model
        theModel.addAttribute("recipes", theRecipes);

        return "list-recipes";        
    }
}
