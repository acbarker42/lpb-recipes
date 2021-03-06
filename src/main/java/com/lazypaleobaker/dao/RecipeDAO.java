package com.lazypaleobaker.dao;

import java.util.List;

import com.lazypaleobaker.entity.Author;
import com.lazypaleobaker.entity.Recipe;

public interface RecipeDAO {

	public List<Recipe> getRecipes();

	public Recipe getRecipe(int theId);

	public void deleteRecipe(int theId);

	public List<Recipe> searchRecipes(String theSearchName);

	public void saveRecipe(Recipe theRecipe);

}
