package com.lazypaleobaker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lazypaleobaker.dao.AuthorDAO;
import com.lazypaleobaker.dao.AuthorDAO;
import com.lazypaleobaker.entity.Author;
import com.lazypaleobaker.entity.Author;

@Service
public class AuthorServiceImpl implements AuthorService {

	@Autowired
	private AuthorDAO authorDAO;
	
	@Override
	@Transactional
	public List<Author> getAuthors() {
		//delegate call to DAO
		return authorDAO.getAuthors();
	}

	@Override
	@Transactional
	public void saveAuthor(Author theAuthor) {
		
		authorDAO.saveAuthor(theAuthor);
		
	}


	@Override
	@Transactional
	public Author getAuthor(int theId) {
		
		return authorDAO.getAuthor(theId);
	}


	@Override
	@Transactional
	public void deleteAuthor(int theId) {
		authorDAO.deleteAuthor(theId);
		
	}


	@Override
	@Transactional
	public List<Author> searchAuthors(String theSearchName) {

		return authorDAO.searchAuthors(theSearchName);
	}

}
