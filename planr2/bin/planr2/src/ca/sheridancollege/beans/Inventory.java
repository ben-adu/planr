package ca.sheridancollege.beans;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries(
{ @NamedQuery(name = "Inventory.getItemList", query = "from Inventory"),
		@NamedQuery(name = "Inventory.byId", query = "from Inventory where id=:id") })
public class Inventory implements Serializable
{
	@Id
	@GeneratedValue
	private int id;
	private int quantity;
	private String name;
	private String description;
	
	public Inventory ()
	{
		
	}
	public Inventory(int id, int quantity, String name, String description)
	{
		this.id = id;
		this.quantity = quantity;
		this.name = name;
		this.description = description;
	}
	public Inventory(int quantity, String name, String description)
	{
		this.quantity = quantity;
		this.name = name;
		this.description = description;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public int getQuantity()
	{
		return quantity;
	}
	public void setQuantity(int quantity)
	{
		this.quantity = quantity;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getDescription()
	{
		return description;
	}
	public void setDescription(String description)
	{
		this.description = description;
	} 
	
	

}
