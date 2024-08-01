package com.klu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(FeedbackServlet.class.getName());

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String comments = request.getParameter("comments");

        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            conn = DBUtil.getConnection();
            String sql = "INSERT INTO feedback (name, email, comments) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, comments);

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                LOGGER.log(Level.INFO, "A new feedback was inserted successfully!");
                response.sendRedirect("feedbackSuccess.jsp");
            } else {
                LOGGER.log(Level.WARNING, "No rows inserted.");
                request.setAttribute("error", "Feedback not saved. Please try again.");
                request.getRequestDispatcher("feedback.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "SQL error occurred while saving feedback.", e);
            request.setAttribute("error", "SQL error: " + e.getMessage());
            request.getRequestDispatcher("feedback.jsp").forward(request, response);
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "An error occurred while saving feedback.", e);
            request.setAttribute("error", "Error: " + e.getMessage());
            request.getRequestDispatcher("feedback.jsp").forward(request, response);
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    LOGGER.log(Level.SEVERE, "Failed to close statement.", e);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    LOGGER.log(Level.SEVERE, "Failed to close connection.", e);
                }
            }
        }
    }
}
