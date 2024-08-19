package library;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/delete")
public class DeleteBookServlet extends HttpServlet
{
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null) 
		{
			req.setAttribute("msg", "Session expired..<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else 
		{
			ArrayList<BookBean> al=(ArrayList<BookBean>)hs.getAttribute("alist");
			String pCode=req.getParameter("pcode");
			Iterator<BookBean> it=al.iterator();
			while(it.hasNext())
			{
				BookBean pb=(BookBean)it.next();
				if(pCode.equals(pb.getCode())) 
				{
					al.remove(pb);
					int k=new DeleteBookDAO().deleteBook(pb);
					if(k>0)
					{
						req.setAttribute("msg", "Book Deleted Succefully...<br>");
						req.getRequestDispatcher("DeleteBook.jsp").forward(req, res);
					}
				}
			}//loop
		}
	}
}
