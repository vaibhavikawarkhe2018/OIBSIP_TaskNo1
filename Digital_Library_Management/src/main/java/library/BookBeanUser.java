package library;


import java.io.Serializable;

@SuppressWarnings("serial")
public class BookBeanUser implements Serializable 
{
	private String code,name,Author,status;
	
	
	public BookBeanUser() 
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
		return Author;
	}
	public void setAuthor(String author)
	{
		Author = author;
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