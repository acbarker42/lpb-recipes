package com.lazypaleobaker.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.lazypaleobaker.bean.Recipe;
import com.lazypaleobaker.util.HibernateUtil;

public class RecipeDAO {
	public static void addRecipeDetails(String recipeName, String directions, String notes) {
		try {
			// 1. configuring hibernate
			Configuration configuration = new Configuration().configure();
			SessionFactory sessionFactory = configuration.buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			
			Recipe recipe = new Recipe();
			recipe.setRecipeName(recipeName);
			recipe.setDirections(directions);
			recipe.setNotes(notes);
			session.save(recipe);
			transaction.commit();
			System.out.println("\n\n Details Added \n");

		} catch (HibernateException e) {
			System.out.println(e.getMessage());
			System.out.println("error");
		}
	}
    public static List<Recipe> getAllRecipes() {
    	Session session = HibernateUtil.getSessionFactory().openSession(); 
		session.beginTransaction();
    	List result = session.createQuery( "from RECIPE" ).list();
		for ( Recipe recipe : (List<Recipe>) result ) {
			System.out.println( "Event (" + recipe.getRecipeName() + ") : " + recipe.getDirections() );
		}
		session.getTransaction().commit();
		session.close();
        return (List<Recipe>)result;
    }
}
