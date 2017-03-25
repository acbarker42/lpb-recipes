package com.lazypaleobaker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lazypaleobaker.entity.Author;
import com.lazypaleobaker.service.AuthorService;



@Controller
@RequestMapping("/author")
public class AuthorController {
	
	@Autowired
	private AuthorService authorService;
	
	
	@GetMapping("/list")
	public String listAuthors(Model theModel) {
		
		List<Author> theAuthors = authorService.getAuthors();
		
		theModel.addAttribute("authors", theAuthors);
		
		//forward to jsp page
		return "list-authors";
	}

	@GetMapping("/showAddForm")
	public String showAddForm(Model theModel){
		
		//create model attribute to bind form data
		Author theAuthor = new Author();
		theModel.addAttribute("author", theAuthor);
		
		return "author-form";
	}
	@PostMapping("/saveAuthor")
	public String saveAuthor(@ModelAttribute("author") Author theAuthor){
		authorService.saveAuthor(theAuthor);
		return "redirect:/author/list";
	}
	
	@GetMapping("/showUpdateForm")
	public String showUpdateForm(@RequestParam("authorId") int theId, Model theModel){
		
		//get the author from the service
		Author theAuthor = authorService.getAuthor(theId);
		
		//set author as a model attribute to prepoulate form
		theModel.addAttribute("author", theAuthor);
		//send over to our form
		
		return "author-form";
	}
	
	@GetMapping("/delete")
	public String deleteAuthor(@RequestParam("authorId") int theId){
		//delete the author
		authorService.deleteAuthor(theId);
		return "redirect:/author/list";
	}
	@PostMapping("/search")
    public String searchAuthors(@RequestParam("theSearchName") String theSearchName,
                                    Model theModel) {

        // search customers from the service
        List<Author> theAuthors = authorService.searchAuthors(theSearchName);
                
        // add the customers to the model
        theModel.addAttribute("authors", theAuthors);

        return "list-authors";        
    }

}
