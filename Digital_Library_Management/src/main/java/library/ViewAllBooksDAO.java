package library;
import java.util.*;
import java.sql.*;
public class ViewAllBooksDAO 
{
    public ArrayList<BookBean>al=new ArrayList<BookBean>();
    public ArrayList<BookBean>retrieve()
    {
    	try
    	{
    		Connection con=DBConnection.getCon();
    		PreparedStatement ps=con.prepareStatement("select * from Book");
    		ResultSet rs=ps.executeQuery();
    		while(rs.next())
    		{
    			BookBean pb=new BookBean();
    			pb.setCode(rs.getString(1));
    			pb.setName(rs.getString(2));
    			pb.setAuthor(rs.getString(3));
    			pb.setStatus(rs.getString(4));
    			al.add(pb);
    		}
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return al;
    }
}
