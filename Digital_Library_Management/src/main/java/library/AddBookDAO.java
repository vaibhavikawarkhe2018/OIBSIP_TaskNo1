package library;
import java.sql.*;
public class AddBookDAO
{ 
	public int k=0;
	public int insert(BookBean pb)
	{
		try
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into Book values(?,?,?,?)");
			ps.setString(1,pb.getCode());
			ps.setString(2,pb.getName());
			ps.setString(3,pb.getAuthor());
			ps.setString(4,pb.getStatus());
			
			k=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}
