package ca.sheridancollege.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQueries(
		{@NamedQuery(name="Event.getEventList", query = "from Event"),
		@NamedQuery(name= "Event.byId", query = "from Event where id=:id")})
public class Event
{
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE )
	private int id;
	private String eventIdentifier;
	private String firstName;
	private String lastName;
	private String eventName;
	private String eStartDate;
	private String eStartTime;
	private String eEndDate;
	private String eEndTime;
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
	public String getEventIdentifier()
	{
		return eventIdentifier;
	}
	public void setEventIdentifier(String eventIdentifier)
	{
		this.eventIdentifier = eventIdentifier;
	}
	public String getEventName()
	{
		return eventName;
	}
	public void setEventName(String eventName)
	{
		this.eventName = eventName;
	}
	public String geteStartDate()
	{
		return eStartDate;
	}
	public void seteStartDate(String eStartDate)
	{
		this.eStartDate = eStartDate;
	}
	public String geteStartTime()
	{
		return eStartTime;
	}
	public void setStartTime(String eStartTime)
	{
		this.eStartTime = eStartTime;
	}
	public String geteEndDate()
	{
		return eEndDate;
	}
	public void seteEndDate(String eEndDate)
	{
		this.eEndDate = eEndDate;
	}
	public String geteEndTime()
	{
		return eEndTime;
	}
	public void seteEndTime(String eEndTime)
	{
		this.eEndTime = eEndTime;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public void seteStartTime(String eStartTime)
	{
		this.eStartTime = eStartTime;
	}
	public Event()
	{
	}
	public Event(String eventIdentifier, String firstName, String lastName, String eventName, String eStartDate,
			String eStartTime, String eEndDate, String eEndTime, String eSetupDate, String eSetupTime,
			String eCleanupDate, String eCleanupTime, List<CleanUp> cleanUpList)
	{
		this.eventIdentifier = eventIdentifier;
		this.firstName = firstName;
		this.lastName = lastName;
		this.eventName = eventName;
		this.eStartDate = eStartDate;
		this.eStartTime = eStartTime;
		this.eEndDate = eEndDate;
		this.eEndTime = eEndTime;
		this.eSetupDate = eSetupDate;
		this.eSetupTime = eSetupTime;
		this.eCleanupDate = eCleanupDate;
		this.eCleanupTime = eCleanupTime;
		this.cleanUpList = cleanUpList;
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
