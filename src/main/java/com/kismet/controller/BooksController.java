package com.kismet.controller;

import com.kismet.pojo.Books;
import com.kismet.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/abc")
public class BooksController {

    @Autowired
    private BooksService booksService;

    @RequestMapping("/allBooks")
    public String allBooksList(Model model) {
        List<Books> allBooksList = booksService.selectAllBooksList();
        model.addAttribute("allBooksList", allBooksList);
        return "books/allBooks";
    }
}
