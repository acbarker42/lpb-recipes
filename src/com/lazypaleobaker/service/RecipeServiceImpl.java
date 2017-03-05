package com.lazypaleobaker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lazypaleobaker.dao.RecipeDAO;
import com.lazypaleobaker.entity.Recipe;

@Service
public class RecipeServiceImpl implements RecipeService {

	@Autowired
	private RecipeDAO recipeDAO;
	
	@Override
	@Transactional
	public List<Recipe> getRecipes() {
		//delegate call to DAO
		return recipeDAO.getRecipes();
	}


	@Override
	@Transactional
	public void saveRecipe(Recipe theRecipe) {
		
		recipeDAO.saveRecipe(theRecipe);
		
	}
}
