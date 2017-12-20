package ca.sheridancollege.beans;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;

@Entity
@NamedQueries(
{ @NamedQuery(name = "Event.getEventList", query = "from Event"),
		@NamedQuery(name = "Event.byId", query = "from Event where eventId=:eventId")})
public class Event
{
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int eventId;
	@Column(nullable = true)
	private String eventIdentifier;
	@Column(nullable = true)
	private String firstName;
	@Column(nullable = true)
	private String lastName;
	@Column(nullable = true)
	private String eventName;
	@Column(nullable = true)
	private String eStartDate;
	@Column(nullable = true)
	private String eStartTime;
	@Column(nullable = true)
	private String eEndDate;
	@Column(nullable = true)
	private String eEndTime;
	@Column(nullable = true)
	private String eSetupDate;
	@Column(nullable = true)
	private String eSetupTime;
	@Column(nullable = true)
	private String eCleanupDate;
	@Column(nullable = true)
	private String eCleanupTime;
	@OneToOne(cascade = CascadeType.ALL, mappedBy="event")
	private SplashPad splashPad;
	
	
	public int getEventId()
	{
		return eventId;
	}
	public void setEventId(int eventId)
	{
		this.eventId = eventId;
	}
	public String getEventIdentifier()
	{
		return eventIdentifier;
	}
	public void setEventIdentifier(String eventIdentifier)
	{
		this.eventIdentifier = eventIdentifier;
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
	public void seteStartTime(String eStartTime)
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
	public String geteSetupDate()
	{
		return eSetupDate;
	}
	public void seteSetupDate(String eSetupDate)
	{
		this.eSetupDate = eSetupDate;
	}
	public String geteSetupTime()
	{
		return eSetupTime;
	}
	public void seteSetupTime(String eSetupTime)
	{
		this.eSetupTime = eSetupTime;
	}
	public String geteCleanupDate()
	{
		return eCleanupDate;
	}
	public void seteCleanupDate(String eCleanupDate)
	{
		this.eCleanupDate = eCleanupDate;
	}
	public String geteCleanupTime()
	{
		return eCleanupTime;
	}
	public void seteCleanupTime(String eCleanupTime)
	{
		this.eCleanupTime = eCleanupTime;
	}
	public Event()
	{
	}
	public SplashPad getSplashPad()
	{
		return splashPad;
	}
	public void setSplashPad(SplashPad splashPad)
	{
		this.splashPad = splashPad;
	}
	public Event(int eventId, String eventIdentifier, String firstName, String lastName, String eventName,
			String eStartDate, String eStartTime, String eEndDate, String eEndTime, String eSetupDate,
			String eSetupTime, String eCleanupDate, String eCleanupTime, SplashPad splashPad)
	{
		this.eventId = eventId;
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
		this.splashPad = splashPad;
	}
	@Override
	public String toString()
	{
		return "Event [eventId=" + eventId + ", eventIdentifier=" + eventIdentifier + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", eventName=" + eventName + ", eStartDate=" + eStartDate + ", eStartTime="
				+ eStartTime + ", eEndDate=" + eEndDate + ", eEndTime=" + eEndTime + ", eSetupDate=" + eSetupDate
				+ ", eSetupTime=" + eSetupTime + ", eCleanupDate=" + eCleanupDate + ", eCleanupTime=" + eCleanupTime
				+ ", splashPad=" + splashPad + "]";
	}
	
	
//	@OneToOne(cascade=CascadeType.ALL)
//	private Vendors vendors;
//	@OneToOne(cascade=CascadeType.ALL)
//	private Agreement agreement;
//	@OneToOne(cascade=CascadeType.ALL)
//	private MCSRentals mCSRentals;
//	@OneToOne(cascade = CascadeType.ALL, mappedBy="event")
//	private SplashPad splashPad;
//	@OneToOne(cascade=CascadeType.ALL)
//	private Rentals rentals;
	
	
}
