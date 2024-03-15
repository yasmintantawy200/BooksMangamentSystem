package newpackage;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.ArrayList;


/**
 *
 * @author ACER
 */
@WebServlet(urlPatterns = {"/AddBookServlet"})
public class AddBookServlet extends HttpServlet {


@Override
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String author = request.getParameter("author");

    List<Book> books = (List<Book>) getServletContext().getAttribute("books");
    if (books == null) {
        books = new ArrayList<>();
        getServletContext().setAttribute("books", books);
    }

    Book book = new Book(id, title, author);
    books.add(book);

    // Set the updated list of books in the servlet context
    getServletContext().setAttribute("books", books);

    // Redirect to listBooks.jsp after adding the book
    response.sendRedirect("listBooks.jsp");
}
}


