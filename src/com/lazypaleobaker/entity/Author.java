package com.lazypaleobaker.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="author")
public class Author {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="author_id")
	private int authorId;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="website")
	private String website;
	
	@Column(name="description")
	private String description;
	
	//@OneToMany(fetch = FetchType.EAGER, mappedBy="author")
	//private Set<Recipe> recipes;
	
	@Column(name="notes")
	private String notes;
	
	public Author (){
		
	}

	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int id) {
		this.authorId = id;
	}


	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
/*
	public Set<Recipe> getRecipes() {
		return recipes;
	}

	public void setRecipes(Set<Recipe> recipes) {
		this.recipes = recipes;
	}
*/
	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	@Override
	public String toString() {
		return "Author [id=" + authorId + ", first_name=" + firstName + ", last_name=" + lastName + ", website=" + website
				+ ", description=" + description + ", notes=" + notes + "]";
	}
	

	
	
}
