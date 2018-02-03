package bookstoreapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import bookstoreapp.model.Book;
import bookstoreapp.service.BookService;

@RestController

public class SimpleRestController {
	
	@Autowired
	private BookService bookService;
	
	private void print() {
		
	}
	
		/*
		@GetMapping("/all-books")
		public String allBooks() {
			return bookService.findAll().toString();
		}
		@GetMapping("/save-book")
		public String saveBook(@RequestParam String name,@RequestParam String author,@RequestParam double price,@RequestParam int rating) {
			Book book=new Book(name,author,price,rating);
			bookService.save(book);
			return "Book Saved";
			
		}
		@GetMapping("/delete-book")
		public String deleteBook(@RequestParam int id) {
			
			bookService.delete(id);
			return "Book Deleted";*/
			
		}
		
		
		
	


