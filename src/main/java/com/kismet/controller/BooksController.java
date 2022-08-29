package com.kismet.controller;

import com.kismet.pojo.Books;
import com.kismet.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
        } else {
            booksService.addBooksAndId(books);
        }
        return "redirect:/books/allBooks";
    }

    @RequestMapping("/deleteBooks/{bookId}")
    public String deleteBooks(@PathVariable("bookId") int id) {
        booksService.deleteBooksById(id);
        return "redirect:/books/allBooks";
    }

    @RequestMapping("/updateBooksPage/{bookId}")
    public String toUpdateBooksPage(@PathVariable("bookId") int id, Model model) {
        Books book = booksService.selectBooksById(id);
        model.addAttribute("QBook", book);
        return "books/updateBooksPage";
    }

    @PostMapping("/updateBooks")
    public String updateBooks(Books books) {
        booksService.updateBooksById(books);
        return "redirect:/books/allBooks";
    }

}
