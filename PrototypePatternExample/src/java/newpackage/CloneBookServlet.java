package newpackage;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import newpackage.Book;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.UUID;


/**
 *
 * @author ACER
 */
@WebServlet(urlPatterns = {"/CloneBookServlet"})
public class CloneBookServlet extends HttpServlet {

    @Override
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        List<Book> books = (List<Book>) getServletContext().getAttribute("books");

        if (books != null) {
            for (Book book : books) {
                if (book.getId().equals(id)) {
                    try {
                        Book clonedBook = (Book) book.clone();
                        clonedBook.setId(UUID.randomUUID().toString()); // Assign a new unique ID to the clone
                        books.add(clonedBook);
                        break;
                    } catch (CloneNotSupportedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        response.sendRedirect("listBooks.jsp");
    }
}
