package com.lazypaleobaker.service;

import java.util.List;

import com.lazypaleobaker.entity.Author;

public interface AuthorService {

	List<Author> getAuthors();

	Author getAuthor(int theId);

	void deleteAuthor(int theId);

	List<Author> searchAuthors(String theSearchName);

	void saveAuthor(Author theAuthor);

}
