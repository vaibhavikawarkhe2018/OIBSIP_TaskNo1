package library;
import java.io.*;
@SuppressWarnings("serial")
public class BookBean implements Serializable
{
     private String code,name,author,status;
     
     
     public BookBean()
     {
    	 
     }

	public String getCode()
	{
		return code;
	}

	public void setCode(String code)
	{
		this.code = code;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}

	public String getAuthor() 
	{
		return author;
	}

	public void setAuthor(String author)
	{
		this.author = author;
	}

	public String getStatus() 
	{
		return status;
	}

	public void setStatus(String status)
	{
		this.status = status;
	}
     
}
