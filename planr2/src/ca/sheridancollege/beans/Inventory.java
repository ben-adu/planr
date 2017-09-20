package ca.sheridancollege.beans;

import java.io.Serializable;

import javax.persistence.Column;
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
	private String name;
	private String price;
	private String description;
	private String manufacturer;
	private int quantity;
	private String date; 
	@Column(name="itemImage", columnDefinition="mediumblob")
    private byte[] image;
 
	
	public Inventory ()
	{
		
	}


	public Inventory(int id, String name, String price, String description, String manufacturer, int quantity,
			String date, byte[] image)
	{
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
		this.manufacturer = manufacturer;
		this.quantity = quantity;
		this.date = date;
		this.image = image;
	}


	public Inventory(int id, String name, String price, String description, String manufacturer, int quantity,
			String date)
	{
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
		this.manufacturer = manufacturer;
		this.quantity = quantity;
		this.date = date;
	}


	public int getId()
	{
		return id;
	}


	public void setId(int id)
	{
		this.id = id;
	}


	public String getName()
	{
		return name;
	}


	public void setName(String name)
	{
		this.name = name;
	}


	public String getPrice()
	{
		return price;
	}


	public void setPrice(String price)
	{
		this.price = price;
	}


	public String getDescription()
	{
		return description;
	}


	public void setDescription(String description)
	{
		this.description = description;
	}


	public String getManufacturer()
	{
		return manufacturer;
	}


	public void setManufacturer(String manufacturer)
	{
		this.manufacturer = manufacturer;
	}


	public int getQuantity()
	{
		return quantity;
	}


	public void setQuantity(int quantity)
	{
		this.quantity = quantity;
	}


	public String getDate()
	{
		return date;
	}


	public void setDate(String date)
	{
		this.date = date;
	}


	public byte[] getImage()
	{
		return image;
	}


	public void setImage(byte[] image)
	{
		this.image = image;
	}

	
	
	
	

}
