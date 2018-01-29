package bookstoreapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bookstoreapp.model.Book;
import bookstoreapp.service.BookService;

@Controller
public class MainController {

	@Autowired
	private BookService bookService;

	@GetMapping("/")
	public String Home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "index";
	}

	@GetMapping("/all-books")
	public String allBooks(HttpServletRequest request) {
		request.setAttribute("books", bookService.findAll());
		request.setAttribute("mode", "MODE_BOOKS");
		return "index";
	}

	@GetMapping("/new-book")
	public String newBook(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_NEW");
		return "index";
	}

	@PostMapping("/save-book")
	public String saveBook(@ModelAttribute Book book, BindingResult bindingresult,HttpServletRequest request) {
		bookService.save(book);
		request.setAttribute("books", bookService.findAll());
		request.setAttribute("mode", "MODE_BOOKS");
		return "index";
	}

	@GetMapping("/update-book")
	public String updateBook(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("book", bookService.findBook(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "index";
	}

	@GetMapping("/delete-book")
	public String deleteBook(@RequestParam int id, HttpServletRequest request) {
		bookService.delete(id);
		request.setAttribute("books", bookService.findAll());
		request.setAttribute("mode", "MODE_BOOKS");
		return "index";
	}

}
