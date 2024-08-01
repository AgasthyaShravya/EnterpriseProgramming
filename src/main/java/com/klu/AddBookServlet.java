package com.klu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String link = request.getParameter("link");

        try {
            Connection conn = DBUtil.getConnection();
            String sql = "INSERT INTO books (title, author, link) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, title);
            stmt.setString(2, author);
            stmt.setString(3, link);
            stmt.executeUpdate();
            conn.close();
            response.sendRedirect("bookSuccess.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "There was an error adding the book. Please try again.");
            request.getRequestDispatcher("bookError.jsp").forward(request, response);
        }
    }
}
