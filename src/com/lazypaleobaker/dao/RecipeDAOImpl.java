package com.lazypaleobaker.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lazypaleobaker.entity.Recipe;

@Repository
public class RecipeDAOImpl implements RecipeDAO {

	//inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Recipe> getRecipes() {
		
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create a query to get recipes
		Query<Recipe> theQuery =
				currentSession.createQuery("from Recipe", 
											Recipe.class);
		
		//execute query and get result list 
		List<Recipe> recipes = theQuery.getResultList();
		System.out.println("RecipeDAOImpl: " + recipes);
		//return results
		return recipes;
	}

	@Override
	public void saveRecipe(Recipe theRecipe) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		//save the recipe
		currentSession.saveOrUpdate(theRecipe);
	}

	@Override
	public Recipe getRecipe(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//read object from database using id
		Recipe theRecipe = currentSession.get(Recipe.class, theId);
		
		return theRecipe;
	}

	@Override
	public void deleteRecipe(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete object from database using id(primary key)
		
		Query theQuery = currentSession.createQuery("delete from Recipe where id=:recipeId");
		theQuery.setParameter("recipeId", theId);
		theQuery.executeUpdate();
		
	}

}
