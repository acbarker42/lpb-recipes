package com.lazypaleobaker.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.lazypaleobaker.bean.Recipe;

public class RecipeDAO {
	public void addRecipeDetails(String recipeName, String directions, String notes) {
		try {
			// 1. configuring hibernate
			Configuration configuration = new Configuration().configure();
			// 2. create sessionfactory
			SessionFactory sessionFactory = configuration.buildSessionFactory();
			// 3. Get Session object
			Session session = sessionFactory.openSession();
			// 4. Starting Transaction
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
}
