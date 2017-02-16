package com.lazypaleobaker.bean;

//RecipeID, RecipeName, AuthorID, Directions, Notes
public class Recipe {
	private int recipeID;
	private String recipeName;
	//private String authorID;
	private String directions;
	private String notes;

	public int getRecipeID() {
		return recipeID;
		}

	public void setRecipeID(int recipeID) {
		this.recipeID = recipeID;
		}

	public String getRecipeName() {
		return recipeName;
		}

	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
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
}
