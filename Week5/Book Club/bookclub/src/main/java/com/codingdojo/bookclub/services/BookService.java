package com.codingdojo.bookclub.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.bookclub.models.Book;
import com.codingdojo.bookclub.models.User;
import com.codingdojo.bookclub.repositories.BookRepository;

@Service
public class BookService {
	
	@Autowired
	private BookRepository bookRepo;
	
	@Autowired
	private UserService userService;
	
//	Create A Book
	public Book createBook(Long userId, Book book) {
		User user = userService.getUser(userId);
		book.setUser(user);
		return bookRepo.save(book);
	}
	
//	Retrieve A Book By ID
	public Book getBook(Long id) {
		return bookRepo.findById(id).orElse(null);
	}
	
//	Get All Books
	public List<Book> getAllBooks() {
		return bookRepo.findAll();
	}
	
//	Update A Book
	public Book updateBook(Book book) {
		return bookRepo.save(book);
	}
	
//	Delete A Book
	public void deleteBook(Long id) {
		bookRepo.deleteById(id);
	}
	
	
	

}
