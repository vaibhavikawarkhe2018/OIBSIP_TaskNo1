package library;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewAllBooksDAOUser 
{
	public ArrayList<BookBeanUser> al=new ArrayList<BookBeanUser>();
	public ArrayList<BookBeanUser> retrieve()
	{
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from Book");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				BookBeanUser pb=new BookBeanUser();
				pb.setCode(rs.getString(1));
				pb.setName(rs.getString(2));
				pb.setAuthor(rs.getString(3));
				pb.setStatus(rs.getString(4));
				al.add(pb);
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return al;
	}
}
