package com.lazypaleobaker.dao;

import java.util.List;

import com.lazypaleobaker.entity.Recipe;

public interface RecipeDAO {

	public List<Recipe> getRecipes();

	public void saveRecipe(Recipe theRecipe);

	public Recipe getRecipe(int theId);

	public void deleteRecipe(int theId);

}
