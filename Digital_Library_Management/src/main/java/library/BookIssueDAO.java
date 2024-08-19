package library;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BookIssueDAO 
{

    public boolean issueBook(String bookCode) 
    {

        Connection con=DBConnection.getCon();
        try
        {
		  PreparedStatement ps=con.prepareStatement("update book set status = ? WHERE code = ?");
       
          ps.setString(1,"issued");
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
