
package ca.sheridancollege.beans;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder(
{ "objects", "backgroundImage" })
@NamedQueries({
	@NamedQuery(name="Layout.getLayoutList", query="from Layout"),
	@NamedQuery(name="Layout.byId", query="from Layout where id = :id")
})
@Entity
public class Layout
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE )
	@JsonIgnore
	private int LayoutId;
	
//	@JsonIgnore
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private List<Objects>objects = new ArrayList<Objects>();
	
//	@OneToOne(cascade=CascadeType.ALL)
//	@JsonProperty("objects")
//	private Objects objects
//	;
	@OneToOne(cascade=CascadeType.ALL)
	@JsonProperty("backgroundImage")
	private BackgroundImage backgroundImage;
	
	@JsonIgnore
	@OneToOne(cascade = CascadeType.ALL)
	private Event event;

	

	public int getLayoutId()
	{
		return LayoutId;
	}

	public void setLayoutId(int layoutId)
	{
		LayoutId = layoutId;
	}

	public List<Objects> getObjects()
	{
		return objects;
	}

	@JsonProperty("objects")
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

	public Layout(List<Objects> objects, BackgroundImage backgroundImage)
	{
		this.objects = objects;
		this.backgroundImage = backgroundImage;
	}

	public Layout()
	{
	}

	@Override
	public String toString()
	{
		return "Map [objects=" + objects + ", backgroundImage=" + backgroundImage + "]";
	}

}