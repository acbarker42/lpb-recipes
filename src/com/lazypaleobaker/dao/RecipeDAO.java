package com.lazypaleobaker.dao;

import java.util.List;

import com.lazypaleobaker.entity.Recipe;

public interface RecipeDAO {

	public List<Recipe> getRecipes();

	public void saveRecipe(Recipe theRecipe);

}
