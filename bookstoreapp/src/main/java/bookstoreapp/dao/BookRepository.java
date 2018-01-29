package bookstoreapp.dao;

import org.springframework.data.repository.CrudRepository;

import bookstoreapp.model.Book;

public interface BookRepository extends CrudRepository<Book, Integer > {

}
