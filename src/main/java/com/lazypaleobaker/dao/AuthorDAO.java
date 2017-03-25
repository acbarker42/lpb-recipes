package com.lazypaleobaker.dao;

import java.util.List;

import com.lazypaleobaker.entity.Author;

public interface AuthorDAO {

	List<Author> getAuthors();

	void saveAuthor(Author theAuthor);

	Author getAuthor(int theId);

	void deleteAuthor(int theId);

	List<Author> searchAuthors(String theSearchName);

}
