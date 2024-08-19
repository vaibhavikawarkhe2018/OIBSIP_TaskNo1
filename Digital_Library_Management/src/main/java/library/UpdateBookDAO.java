package library;
import java.sql.*;
public class UpdateBookDAO
{
	public int k=0;
	public int update(BookBean pb)
	{
		try
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("update Book set name=?,author=?,status=? where code=?");
			ps.setString(1,pb.getName());
			ps.setString(2,pb.getAuthor());
			ps.setString(3,pb.getStatus());
			
			ps.setString(4,pb.getCode());
			k=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}
