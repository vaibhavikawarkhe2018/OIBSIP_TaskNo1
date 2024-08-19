package library;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteBookDAO 
{
	public int k=0;
	public int deleteBook(BookBean pb) 
	{
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("Delete from Book where code=?");
			ps.setString(1, pb.getCode());
			k=ps.executeUpdate();
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		return k;
	}

}
