package com.klu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Level;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RequestBooksServlet")
public class RequestBooksServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String email = request.getParameter("email");

        try {
            Connection conn = DBUtil.getConnection();
            String sql = "INSERT INTO book_requests (title, author, email) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, title);
            stmt.setString(2, author);
            stmt.setString(3, email);

            int result = stmt.executeUpdate();
            conn.close();

            if (result > 0) {
            	request.setAttribute("message", "Book inserted Succesfully.");
                response.sendRedirect("requestBookSuccess.jsp");
            } else {
                request.setAttribute("message", "Failed to submit book request.");
            }
            request.getRequestDispatcher("requestBook.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error: " + e.getMessage());
            request.getRequestDispatcher("requestBook.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
