package ca.sheridancollege.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQueries(
{ @NamedQuery(name = "Customer.getCustomerList", query = "from Customer"),
		@NamedQuery(name = "Customer.byId", query = "from Customer where id=:id") })
public class Customer implements Serializable 
{
	@Id
	@GeneratedValue
	private int id;
	private String firstName;
	private String lastName;
	private String eventName;
	private String company;
	private String address;

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getFirstName()
	{
		return firstName;
	}

	public void setFirstName(String firstName)
	{
		this.firstName = firstName;
	}

	public String getLastName()
	{
		return lastName;
	}

	public void setLastName(String lastName)
	{
		this.lastName = lastName;
	}

	public String getEventName()
	{
		return eventName;
	}

	public void setEventName(String eventName)
	{
		this.eventName = eventName;
	}

	public String getCompany()
	{
		return company;
	}

	public void setCompany(String company)
	{
		this.company = company;
	}

	public String getAddress()
	{
		return address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

	public Customer(int id, String firstName, String lastName, String eventName, String company, String address)
	{
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.eventName = eventName;
		this.company = company;
		this.address = address;
	}

	public Customer(String firstName, String lastName, String eventName, String company, String address)
	{
		this.firstName = firstName;
		this.lastName = lastName;
		this.eventName = eventName;
		this.company = company;
		this.address = address;
	}

	public Customer()
	{
	}
	
	@OneToMany
	private List<Event>eventList = new ArrayList<Event>();

	public List<Event> getEventList()
	{
		return eventList;
	}

	public void setEventList(List<Event> eventList)
	{
		this.eventList = eventList;
	}
	
	@OneToMany
	private List<User>userList = new ArrayList<User>();
	public List<User> getUserList()
	{
		return userList;
	}

	public void setUserList(List<User> userList)
	{
		this.userList = userList;
	}
	

}
