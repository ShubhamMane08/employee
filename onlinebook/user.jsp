<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User - View Books</title>
</head>
<body>
    <h1>Available Books</h1>

    <% 
        List<String> books = (List<String>) application.getAttribute("books");
        if (books != null) {
    %>
        <table border="1">
            <tr>
                <th>Book Details</th>
            </tr>
            <% for (String book : books) { %>
                <tr>
                    <td><%= book %></td>
                </tr>
            <% } %>
        </table>
    <% } else { %>
        <p>No books available.</p>
    <% } %>
    
    <a href="admin.jsp">Go to Admin Page</a>
</body>
</html>
