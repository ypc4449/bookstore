package bookstoreapp.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import bookstoreapp.dao.BookRepository;
import bookstoreapp.model.Book;

@Service
@Transactional

public class BookService {

	private final BookRepository bookRepository;

	public BookService(BookRepository bookRepository) {
		super();
		this.bookRepository = bookRepository;
	}

	public List<Book> findAll() {
		List<Book> books = new ArrayList<>();
		for (Book book : bookRepository.findAll()) {
			books.add(book);
		}

		return books;

	}
	public Book findBook(int id) {
		return bookRepository.findOne(id);
	}
	
	public void save(Book book) {
		bookRepository.save(book);
	}
	
	public void delete(int id) {
		bookRepository.delete(id);
	}

}
