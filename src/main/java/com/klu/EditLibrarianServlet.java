package com.klu;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditLibrarianServlet")
public class EditLibrarianServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String librarianId = request.getParameter("librarianId");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        try {
            Connection conn = DBUtil.getConnection();
            StringBuilder sql = new StringBuilder("UPDATE users SET ");
            if (username != null && !username.isEmpty()) sql.append("username = ?, ");
            if (password != null && !password.isEmpty()) sql.append("password = ?, ");
            if (email != null && !email.isEmpty()) sql.append("email = ?, ");
            sql.setLength(sql.length() - 2); // Remove trailing comma
            sql.append(" WHERE id = ? AND role = 'librarian'");
            PreparedStatement stmt = conn.prepareStatement(sql.toString());

            int paramIndex = 1;
            if (username != null && !username.isEmpty()) stmt.setString(paramIndex++, username);
            if (password != null && !password.isEmpty()) stmt.setString(paramIndex++, password);
            if (email != null && !email.isEmpty()) stmt.setString(paramIndex++, email);
            stmt.setInt(paramIndex, Integer.parseInt(librarianId));
            
            stmt.executeUpdate();
            conn.close();
            response.sendRedirect("adminDashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


