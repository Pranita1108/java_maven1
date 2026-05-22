<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <h1>Hello from Tomcat + Maven!</h1>
    <p>This is your JSP landing page.</p>

    <%
        // Example of embedding Java code in JSP
        String user = "Guest";
        out.println("<p>Welcome, " + user + "!</p>");
    %>

    <p>Current time: <%= new java.util.Date() %></p>
</body>
</html>
