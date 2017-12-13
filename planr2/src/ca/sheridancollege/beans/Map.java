
package ca.sheridancollege.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder(
{ "objects", "backgroundImage" })
@Entity
public class Map
{
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE )
	private int id;
	@JsonProperty("objects")
	@OneToMany(cascade=CascadeType.ALL)
	private List<Objects>objects = new ArrayList<Objects>();
	@OneToOne(cascade=CascadeType.ALL)
	@JsonProperty("backgroundImage")
	private BackgroundImage backgroundImage;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Event event;
	

	public List<Objects> getObjects()
	{
		return objects;
	}

	public void setObjects(List<Objects> objects)
	{
		this.objects = objects;
	}

	public BackgroundImage getBackgroundImage()
	{
		return backgroundImage;
	}

	public void setBackgroundImage(BackgroundImage backgroundImage)
	{
		this.backgroundImage = backgroundImage;
	}

	public Map(List<Objects> objects, BackgroundImage backgroundImage)
	{
		this.objects = objects;
		this.backgroundImage = backgroundImage;
	}

	public Map()
	{
	}

	@Override
	public String toString()
	{
		return "Map [objects=" + objects + ", backgroundImage=" + backgroundImage + "]";
	}

}