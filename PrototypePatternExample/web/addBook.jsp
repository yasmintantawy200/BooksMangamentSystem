<%-- 
    Document   : addBook
    Created on : Mar 14, 2024, 9:47:09 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="newpackage.Book" %>

<!-- addBook.jsp -->
<html>
<head>
    <title>Add a Book</title>
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
    <h1>Add a New Book</h1>
    <form action="AddBookServlet" method="post">
        ID: <input type="text" name="id" /><br/>
        Title: <input type="text" name="title" /><br/>
        Author: <input type="text" name="author" /><br/>
        <input type="submit" value="Add Book" />
    </form>
</body>
</html>

