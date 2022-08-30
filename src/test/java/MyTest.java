import com.kismet.pojo.Books;
import com.kismet.service.BooksService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTest {
//    @Test
    public void test01() {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring-application.xml");
        BooksService booksService = context.getBean("booksService", BooksService.class);
        booksService.addBooks(new Books(5, "水浒传", 6, "水浒英雄传"));
        List<Books> booksList = booksService.selectAllBooksList();
        for (Books books : booksList) {
            System.out.println(books);
        }
    }
}
