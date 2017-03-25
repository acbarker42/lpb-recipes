package com.lazypaleobaker.testdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class TestDbServlet
 */
@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//setup connection variables
		String user = "lpbAdmin";
		String pass = "zaq1ZAQ!";
		String jdbcUrl = "jdbc:mysql://lpb-recipes.cuvzkihslwac.us-east-2.rds.amazonaws.com:3306/lpb_recipes?useSSL=false";
		String driver = "com.mysql.jdbc.Driver";
		
		//get connection to database
		try{
			PrintWriter out = response.getWriter();
			out.println("connecting to db: " + jdbcUrl);
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(jdbcUrl, user, pass);
			out.print("success");
			conn.close();
		}
		catch (Exception e){
			e.printStackTrace();
			throw new ServletException(e);
		}
		
		
	}

}
