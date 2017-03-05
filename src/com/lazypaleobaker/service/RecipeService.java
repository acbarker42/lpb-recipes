package com.lazypaleobaker.service;

import java.util.List;

import com.lazypaleobaker.entity.Recipe;

public interface RecipeService {
	
	public List<Recipe> getRecipes();

	public void saveRecipe(Recipe theRecipe);
}
