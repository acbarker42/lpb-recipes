package com.lazypaleobaker.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lazypaleobaker.entity.Author;
import com.lazypaleobaker.entity.Author;

@Repository
public class AuthorDAOImpl implements AuthorDAO {

	//inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Author> getAuthors() {
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//create a query to get author
		Query<Author> theQuery =
				currentSession.createQuery("from Author", 
											Author.class);
		
		//execute query and get result list 
		List<Author> authors = theQuery.getResultList();
		System.out.println("AuthorDAOImpl: " + authors);
		//return results
		return authors;
	}
	
	@Override
	public void saveAuthor(Author theAuthor) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		//save the author
		currentSession.saveOrUpdate(theAuthor);

	}

	@Override
	public Author getAuthor(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//read object from database using id
		Author theAuthor = currentSession.get(Author.class, theId);
		
		return theAuthor;
	}

	@Override
	public void deleteAuthor(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete object from database using id(primary key)
		
		Query theQuery = currentSession.createQuery("delete from Author where id=:authorId");
		theQuery.setParameter("authorId", theId);
		theQuery.executeUpdate();
		
	}

	@Override
	public List<Author> searchAuthors(String theSearchName) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = null;

		// only search by name if theSearchName is not empty
		if (theSearchName != null && theSearchName.trim().length() > 0) {

			// search in author name or directions
			theQuery = currentSession
					.createQuery("from Author where lower(firstName) like :theName "
							+ "or lower(lastName) like :theName "
							+ "or lower(website) like :theName", 
							Author.class);
			theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");

		}
		else {
			// theSearchName is empty, return all Authors
			theQuery = currentSession.createQuery("from Author", Author.class);            
		}

		// execute query and get result list
		List<Author> authors = theQuery.getResultList();

		// return the results        
		return authors;
	        
	   }

}
