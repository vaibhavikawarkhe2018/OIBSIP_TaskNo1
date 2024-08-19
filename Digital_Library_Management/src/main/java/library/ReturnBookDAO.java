package library;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReturnBookDAO
{
	 public boolean returnBook(String bookCode) 
	    {

	        Connection con=DBConnection.getCon();
	        try
	        {
			  PreparedStatement ps=con.prepareStatement("update book set status = ? where code = ?");
	       
	          ps.setString(1,"available");
	          ps.setString(2, bookCode);
	          int rowsUpdated = ps.executeUpdate();

	            return rowsUpdated > 0;
	        } 
	       catch (SQLException e) 
	       {
	            e.printStackTrace();
	            return false;
	        }
	    }
}