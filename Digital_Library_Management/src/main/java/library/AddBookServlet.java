
package library;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/addBook")
public class AddBookServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			BookBean pb=new BookBean();
			pb.setCode(req.getParameter("code"));
			pb.setName(req.getParameter("name"));
			pb.setAuthor(req.getParameter("author"));
			pb.setStatus(req.getParameter("status"));
			int k=new AddBookDAO().insert(pb);
			if(k>0)
			{
				req.setAttribute("msg","Book Added Successfully...<br>");
				req.getRequestDispatcher("AddBook.jsp").forward(req, res);
			}
		}
	}

}
