package com.kismet.service;

import com.kismet.dao.BooksMapper;
import com.kismet.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("booksService")
public class BooksServiceImpl implements BooksService{

    @Autowired
    private BooksMapper booksMapper;

    @Autowired
    public void setBooksMapper(BooksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    @Override
    public int addBooks(Books books) {
        return booksMapper.addBooks(books);
    }

    @Override
    public int deleteBooksById(int id) {
        return booksMapper.deleteBooksById(id);
    }

    @Override
    public int updateBooksById(Books books) {
        return booksMapper.updateBooksById(books);
    }

    @Override
    public List<Books> selectAllBooksList() {
        return booksMapper.selectAllBooksList();
    }

    @Override
    public Books selectBooksById(int id) {
        return booksMapper.selectBooksById(id);
    }
}
