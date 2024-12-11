<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin - Add Book</title>
</head>
<body>
    <h1>Admin - Add Book</h1>

    <form action="admin.jsp" method="post">
        Book Name: <input type="text" name="bookName"><br>
        Author: <input type="text" name="author"><br>
        Genre: <input type="text" name="genre"><br>
        <input type="submit" value="Add Book">
    </form>

    <% 
        String bookName = request.getParameter("bookName");
        String author = request.getParameter("author");
        String genre = request.getParameter("genre");

        if (bookName != null && author != null && genre != null) {
            List<String> books = (List<String>) application.getAttribute("books");
            if (books == null) {
                books = new ArrayList<>();
                application.setAttribute("books", books);
            }
            books.add("Book: " + bookName + ", Author: " + author + ", Genre: " + genre);
        }
    %>

    <a href="user.jsp">View Books</a>
</body>
</html>
