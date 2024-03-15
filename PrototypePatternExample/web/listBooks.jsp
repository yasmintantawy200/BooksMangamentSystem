<%-- 
    Document   : listBooks
    Created on : Mar 14, 2024, 11:23:44 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="newpackage.Book" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <title>List of Books</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        li {
            background-color: #fff;
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        form {
            width: 50%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>List of Books</h1>
    <ul>
        <% List<Book> books = (List<Book>) getServletContext().getAttribute("books");
           if (books != null) {
               for (Book book : books) {
                   out.println("<li>" + book.getId() + " - " + book.getTitle() + " by " + book.getAuthor() + "</li>");
               }
           }
        %>
    </ul>
    <form action="CloneBookServlet" method="post">
        ID to clone: <input type="text" name="id" />
        <input type="submit" value="Clone Book" />
    </form>
</body>
</html>

