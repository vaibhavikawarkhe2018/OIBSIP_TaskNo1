package library;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/returnBook")
public class ReturnBookServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
    {
        String bookCode = req.getParameter("bookCode");

        boolean success = new ReturnBookDAO().returnBook(bookCode);

        if (success) 
        {
           req.setAttribute("msg", "Book returned successfully.");
           req.getRequestDispatcher("BookReturn.jsp").forward(req, res);
        } 
        else 
        {
        	req.setAttribute("msg", "Failed to return the book. Please try again.");
        	req.getRequestDispatcher("BookReturn.jsp").forward(req, res);
        }

    }
}