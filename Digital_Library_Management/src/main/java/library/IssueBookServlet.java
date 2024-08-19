package library;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet("/issueBook")
public class IssueBookServlet extends HttpServlet 
{
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
    {
        String bookCode = req.getParameter("bookCode");
        
         boolean success=new BookIssueDAO().issueBook(bookCode);
         
        if(success)
     	{
        	
        	req.setAttribute("msg","Book Issued Successfully...<br>");

        	req.getRequestDispatcher("BookIssued.jsp").forward(req, res);
     	}
     	else
     	{
     		req.setAttribute("msg","Failed to issue the book. Please try again");
     		req.getRequestDispatcher("BookIssued.jsp").forward(req, res);
     	}
    }
}
