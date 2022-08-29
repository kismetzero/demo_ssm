package com.kismet.controller;

import com.kismet.pojo.Books;
import com.kismet.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/books")
public class BooksController {

    @Autowired
    private BooksService booksService;

    @RequestMapping("/allBooks")
    public String allBooksList(Model model) {
        List<Books> allBooksList = booksService.selectAllBooksList();
        model.addAttribute("allBooksList", allBooksList);
        return "books/allBooks";
    }

    @RequestMapping("/addBooksPage")
    public String toAddBooksPage() {
        return "books/addBooksPage";
    }

    @PostMapping("/addBooks")
    public String addBooks(Books books) {
        System.out.println("[INFO] addBooks ===> " + books);
        if (books.getBookId() == 0) {
            booksService.addBooks(books);
        }
        return "redirect:/books/allBooks";
    }
}
