package library;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@WebServlet("/update")
@SuppressWarnings("serial")
public class UpdateBookServlet extends HttpServlet
{
   @SuppressWarnings("unchecked")
   @Override
   protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
   {
	   HttpSession hs=req.getSession(false);
	   if(hs==null)
	   {
		   req.setAttribute("msg","Session Expired..<br>");
		   req.getRequestDispatcher("Msg.jsp").forward(req, res);
	   }
	   else
	   {
		   ArrayList<BookBean>al=(ArrayList<BookBean>)hs.getAttribute("alist");
		   String pCode=req.getParameter("pcode");
		   Iterator<BookBean>it=al.iterator();
		   while(it.hasNext())
		   {
			   BookBean pb=(BookBean)it.next();
			   if(pCode.equals(pb.getCode()))
			   {
				   pb.setName(req.getParameter("name"));
				   pb.setAuthor(req.getParameter("author"));
				   pb.setStatus(req.getParameter("status"));
				  
				   int k=new UpdateBookDAO().update(pb);
				   if(k>0)
				   {
					   req.setAttribute("msg","Book Updated Successfully...<br>");
					   req.getRequestDispatcher("UpdateBook.jsp").forward(req, res);
				   }
				   break;
			   }
		   }
	   }
   }
}
