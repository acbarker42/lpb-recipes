package com.lazypaleobaker.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.lazypaleobaker.dao.RecipeDAO;

public class RecipeControllerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String recipeName = request.getParameter("recipeName");
		String directions = request.getParameter("directions");
		String notes = request.getParameter("notes");
		HttpSession session = request.getSession(true);
		try {
			RecipeDAO recipeDAO = new RecipeDAO();
			recipeDAO.addRecipeDetails(recipeName, directions, notes);
			response.sendRedirect("Success");
		} 
		catch (Exception e) {
	
			e.printStackTrace();
		}
	}
}

