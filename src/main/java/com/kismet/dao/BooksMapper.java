package com.kismet.dao;

import com.kismet.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BooksMapper {

    //添加一本书籍
    int addBooks(Books books);

    //根据ID删除一本书籍
    int deleteBooksById(@Param("bookId") int id);

    //根据ID更新一本书籍
    int updateBooksById(Books books);

    //获取全部书籍的集合list
    List<Books> selectAllBooksList();

    //根据ID获取一本书籍
    Books selectBooksById(@Param("bookId") int id);

}
