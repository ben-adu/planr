package ca.sheridancollege.beans;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class One
{
	@Id
	@GeneratedValue
	private int id;
	private String name;
	
	private String age;
	private String car;
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getAge()
	{
		return age;
	}
	public void setAge(String age)
	{
		this.age = age;
	}
	public String getCar()
	{
		return car;
	}
	public void setCar(String car)
	{
		this.car = car;
	}
	public One(String name, String age, String car)
	{
		this.name = name;
		this.age = age;
		this.car = car;
	}
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public One()
	{
	}
	
	
	    
	
}
