package com.kismet.service;

import com.kismet.pojo.Books;

import java.util.List;

public interface BooksService {

    //添加一本书籍
    int addBooks(Books books);

    //根据ID删除一本书籍
    int deleteBooksById(int id);

    //根据ID更新一本书籍
    int updateBooksById(Books books);

    //获取全部书籍的集合list
    List<Books> selectAllBooksList();

    //根据ID获取一本书籍
    Books selectBooksById(int id);
}
