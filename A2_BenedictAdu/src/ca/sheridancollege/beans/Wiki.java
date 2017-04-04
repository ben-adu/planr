package ca.sheridancollege.beans;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
@NamedQuery(name = "Wiki.getWikiList", query = "from Wiki"),
@NamedQuery(name= "Wiki.bySubject", query="from Wiki where subject=:subject")
})
public class Wiki implements Serializable
{
	@Id
	@GeneratedValue
	private int id;
	private String subject;
	private String name;
	private String message;
	private String title;

	public Wiki()
	{
	}

	public Wiki(int id, String subject, String name, String message, String title)
	{
		this.id = id;
		this.subject = subject;
		this.name = name;
		this.message = message;
		this.title = title;
	}
	
	

	public Wiki(int id, String title)
	{
		this.id = id;
		this.title = title;
	}
	
	

	public Wiki(int id)
	{
		this.id = id;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getSubject()
	{
		return subject;
	}

	public void setSubject(String subject)
	{
		this.subject = subject;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

}
