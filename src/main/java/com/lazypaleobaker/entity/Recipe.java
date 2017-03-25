package com.lazypaleobaker.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="recipe")
public class Recipe {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="recipe_id")
	private int recipeId;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="author_id")
	private Author author;
	
	@Column(name="recipe_name")
	private String recipeName;
	
	@Column(name="directions")
	private String directions;
	
	@Column(name="notes")
	private String notes;
	
	public Recipe (){
		
	}

	public int getRecipeId() {
		return recipeId;
	}

	public void setRecipeId(int id) {
		this.recipeId = id;
	}

	public String getRecipeName() {
		return recipeName;
	}

	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public String getDirections() {
		return directions;
	}

	public void setDirections(String directions) {
		this.directions = directions;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	@Override
	public String toString() {
		return "Recipe [id=" + recipeId + ", recipeName=" + recipeName + ", directions=" + directions + ", notes=" + notes
				+ "]";
	}
	
	
	
}
