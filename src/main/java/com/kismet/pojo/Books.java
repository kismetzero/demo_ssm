package com.kismet.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Books {

    //书籍ID
    private int bookId;

    //书籍名
    private String bookName;

    //书籍数量
    private int bookCounts;

    //书籍描述
    private String detail;
}
