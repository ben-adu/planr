package ca.sheridancollege.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries(
{ @NamedQuery(name = "Tracker.byDepartment", query = "from Tracker where department=:department"),
		@NamedQuery(name = "Tracker.all", query = "from Tracker")

})
public class Tracker implements Serializable
{
	@Id
	@GeneratedValue
	private int id;
	private String message;
	private String department;

	// @ElementCollection
	// private List<Tracker> netList = new ArrayList<Tracker>();

	// getters and setters

	public int getId()
	{
		return id;
	}

	// public List<Tracker> getNetList()
	// {
	// return netList;
	// }
	//
	// public void setNetList(List<Tracker> netList)
	// {
	// this.netList = netList;
	// }

	public void setId(int id)
	{
		this.id = id;
	}

	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getDepartment()
	{
		return department;
	}

	public void setDepartment(String department)
	{
		this.department = department;
	}
	// end of getters and setters

	// constructors
	public Tracker()
	{
	}

	public Tracker(String message, String department)
	{
		this.message = message;
		this.department = department;
	}

	public Tracker(int id, String message, String department)
	{
		this.id = id;
		this.message = message;
		this.department = department;
	}
	// end of constructor

}
