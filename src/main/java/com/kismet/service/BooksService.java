package com.kismet.service;

import com.kismet.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BooksService {

    //添加一本书籍
    int addBooks(Books books);

    //添加一本书籍带ID
    int addBooksAndId(Books books);

    //根据ID删除一本书籍
    int deleteBooksById(int id);

    //根据ID更新一本书籍
    int updateBooksById(Books books);

    //获取全部书籍的集合list
    List<Books> selectAllBooksList();

    //根据ID获取一本书籍
    Books selectBooksById(int id);

    //根据书名模糊查询书籍集合
    List<Books> selectBooksLikeName(String likeName);
}
