package com.klu;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/EditBookServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class EditBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookId = request.getParameter("id");
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String link = request.getParameter("link");

        StringBuilder sql = new StringBuilder("UPDATE books SET ");
        if (title != null && !title.isEmpty()) sql.append("title = ?, ");
        if (author != null && !author.isEmpty()) sql.append("author = ?, ");
        if (link != null && !link.isEmpty()) sql.append("link = ?, ");
        sql.setLength(sql.length() - 2); // Remove trailing comma
        sql.append(" WHERE id = ?");

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql.toString())) {
            int paramIndex = 1;
            if (title != null && !title.isEmpty()) stmt.setString(paramIndex++, title);
            if (author != null && !author.isEmpty()) stmt.setString(paramIndex++, author);
            if (link != null && !link.isEmpty()) stmt.setString(paramIndex++, link);

            stmt.setInt(paramIndex, Integer.parseInt(bookId));
            stmt.executeUpdate();
            response.sendRedirect("bookUpdateSuccess.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("bookUpdateError.jsp");
        }
    }
}
