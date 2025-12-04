<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <%@ page import="jakarta.servlet.http.HttpSession" %>
    <!DOCTYPE html>
    <html>

    <head> 
    
      <meta charset="UTF-8">
      <title>Welcome</title>
      <link rel="stylesheet" type="text/css" href="indexStyle.css">
    </head>

    <body>

      <% // Retrive the session1 object. 
      HttpSession session1=request.getSession(false); 
      // Check if the session is not null and the username attribute is set.
        if (session1 !=null && session1.getAttribute("username") !=null) { 
        // Get the username from the session1. 
        String username=(String) session1.getAttribute("username"); %>
        <div class="container">
          <h1>Welcome, <%=username %>!</h1>
          <p>We're delighted to have you on our platform. 🌟</p>
          <p>Feel free to stay as long as you like, and when you're ready,</p>
          <p>you can logout securely.
            <button type="submit"><a href="logout.jsp">LOGOUT</a></button>
        </div>

        <% } else { // Redirect to the login page if the session is not valid. 
        	response.sendRedirect("login.jsp"); 
        } %>


    </body>

    </html>