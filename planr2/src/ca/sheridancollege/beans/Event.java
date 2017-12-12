package ca.sheridancollege.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Event
{
	@Id
	@GeneratedValue
	private int id;
	private String firstName;
	private String lastName;
	private String eventName;
	private String startDate;
	private String startTime;
	private String endDate;
	private String endTime;
	private String eSetupDate;
	private String eSetupTime;
	private String eCleanupDate;
	private String eCleanupTime;
	
	
	@ElementCollection
	private List<CleanUp> cleanUpList = new ArrayList<CleanUp>();
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String geteSetupDate() {
		return eSetupDate;
	}
	public void seteSetupDate(String eSetupDate) {
		this.eSetupDate = eSetupDate;
	}
	public String geteSetupTime() {
		return eSetupTime;
	}
	public void seteSetupTime(String eSetupTime) {
		this.eSetupTime = eSetupTime;
	}
	public String geteCleanupDate() {
		return eCleanupDate;
	}
	public void seteCleanupDate(String eCleanupDate) {
		this.eCleanupDate = eCleanupDate;
	}
	public String geteCleanupTime() {
		return eCleanupTime;
	}
	public void seteCleanupTime(String eCleanupTime) {
		this.eCleanupTime = eCleanupTime;
	}
	public List<CleanUp> getCleanUpList() {
		return cleanUpList;
	}
	public void setCleanUpList(List<CleanUp> cleanUpList) {
		this.cleanUpList = cleanUpList;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getEventName()
	{
		return eventName;
	}
	public void setEventName(String eventName)
	{
		this.eventName = eventName;
	}
	public String getStartDate()
	{
		return startDate;
	}
	public void setStartDate(String startDate)
	{
		this.startDate = startDate;
	}
	public String getStartTime()
	{
		return startTime;
	}
	public void setStartTime(String startTime)
	{
		this.startTime = startTime;
	}
	public String getEndDate()
	{
		return endDate;
	}
	public void setEndDate(String endDate)
	{
		this.endDate = endDate;
	}
	public String getEndTime()
	{
		return endTime;
	}
	public void setEndTime(String endTime)
	{
		this.endTime = endTime;
	}
	
	/*public List<CleanUp> getCleanUpList()
	{
		return cleanUpList;
	}
	public void setCleanUpList(List<CleanUp> cleanUpList)
	{
		this.cleanUpList = cleanUpList;
	}*/
	


}
