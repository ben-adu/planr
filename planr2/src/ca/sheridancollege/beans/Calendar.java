package ca.sheridancollege.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
"id",
"start_date",
"end_date",
"text",
"details"
})
@Entity
public class Calendar {
@Id
@JsonProperty("id")
private String id;
@JsonProperty("start_date")
private String startDate;
@JsonProperty("end_date")
private String endDate;
@JsonProperty("text")
private String text;
@JsonProperty("details")
private String details;
public String getId()
{
	return id;
}
public void setId(String id)
{
	this.id = id;
}
public String getStartDate()
{
	return startDate;
}
public void setStartDate(String startDate)
{
	this.startDate = startDate;
}
public String getEndDate()
{
	return endDate;
}
public void setEndDate(String endDate)
{
	this.endDate = endDate;
}
public String getText()
{
	return text;
}
public void setText(String text)
{
	this.text = text;
}
public String getDetails()
{
	return details;
}
public void setDetails(String details)
{
	this.details = details;
}
public Calendar(String id, String startDate, String endDate, String text, String details)
{
	this.id = id;
	this.startDate = startDate;
	this.endDate = endDate;
	this.text = text;
	this.details = details;
}
public Calendar()
{
}
@Override
public String toString()
{
	return "Calendar [id=" + id + ", startDate=" + startDate + ", endDate=" + endDate + ", text=" + text + ", details="
			+ details + "]";
}



}