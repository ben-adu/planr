package ca.sheridancollege.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
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
	private String splashPadNo;
	private String splashPadOne;
	private String spashPadTwo;
	private String pressureOne;
	private String pressureLevelOne;
	private String pressureTwo;
	private String pressureLevelTwo;
	private String pressureThree;
	private String pressureLevelThree;
	private String pressureFour;
	private String pressureLevelFour;
	private int chairNum;
	private int fenceNumb;
	private int barricadeNum;
	@Column(name="portoletNum")
	private int shitterNum;
	private int handWashNum;
	private int footWashNum;
	private int picnicNum;
	private int waterStationNum;
	private String metalBarricade;
	private String picnicTable;
	private String whiteFence;
	private String umbrella;
	private String bistroTable;
	private String rentalNotes;
	private int inflateOne;
	private String inflateOneSize;
	private int inflateTwo;
	private String inflateTwoSize;
	private int gamesNum;
	private String gamesType;
	private String gamesSize;
	private int foodTruckNum;
	private int trailerNum;
	private String trailerDimension;
	private int displayCarNum;
	private String dispayCarDetails;
	private int displayTruckNum;
	private String displayTruckDetails;
	private int attendeeNum;
	private String acknowledgement;
	
	//getters and setters
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
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
	public String getSplashPadNo()
	{
		return splashPadNo;
	}
	public void setSplashPadNo(String splashPadNo)
	{
		this.splashPadNo = splashPadNo;
	}
	public String getSplashPadOne()
	{
		return splashPadOne;
	}
	public void setSplashPadOne(String splashPadOne)
	{
		this.splashPadOne = splashPadOne;
	}
	public String getSpashPadTwo()
	{
		return spashPadTwo;
	}
	public void setSpashPadTwo(String spashPadTwo)
	{
		this.spashPadTwo = spashPadTwo;
	}
	public String getPressureOne()
	{
		return pressureOne;
	}
	public void setPressureOne(String pressureOne)
	{
		this.pressureOne = pressureOne;
	}
	public String getPressureLevelOne()
	{
		return pressureLevelOne;
	}
	public void setPressureLevelOne(String pressureLevelOne)
	{
		this.pressureLevelOne = pressureLevelOne;
	}
	public String getPressureTwo()
	{
		return pressureTwo;
	}
	public void setPressureTwo(String pressureTwo)
	{
		this.pressureTwo = pressureTwo;
	}
	public String getPressureLevelTwo()
	{
		return pressureLevelTwo;
	}
	public void setPressureLevelTwo(String pressureLevelTwo)
	{
		this.pressureLevelTwo = pressureLevelTwo;
	}
	public String getPressureThree()
	{
		return pressureThree;
	}
	public void setPressureThree(String pressureThree)
	{
		this.pressureThree = pressureThree;
	}
	public String getPressureLevelThree()
	{
		return pressureLevelThree;
	}
	public void setPressureLevelThree(String pressureLevelThree)
	{
		this.pressureLevelThree = pressureLevelThree;
	}
	public String getPressureFour()
	{
		return pressureFour;
	}
	public void setPressureFour(String pressureFour)
	{
		this.pressureFour = pressureFour;
	}
	public String getPressureLevelFour()
	{
		return pressureLevelFour;
	}
	public void setPressureLevelFour(String pressureLevelFour)
	{
		this.pressureLevelFour = pressureLevelFour;
	}
	public int getChairNum()
	{
		return chairNum;
	}
	public void setChairNum(int chairNum)
	{
		this.chairNum = chairNum;
	}
	public int getFenceNumb()
	{
		return fenceNumb;
	}
	public void setFenceNumb(int fenceNumb)
	{
		this.fenceNumb = fenceNumb;
	}
	public int getBarricadeNum()
	{
		return barricadeNum;
	}
	public void setBarricadeNum(int barricadeNum)
	{
		this.barricadeNum = barricadeNum;
	}
	public int getShitterNum()
	{
		return shitterNum;
	}
	public void setShitterNum(int shitterNum)
	{
		this.shitterNum = shitterNum;
	}
	public int getHandWashNum()
	{
		return handWashNum;
	}
	public void setHandWashNum(int handWashNum)
	{
		this.handWashNum = handWashNum;
	}
	public int getFootWashNum()
	{
		return footWashNum;
	}
	public void setFootWashNum(int footWashNum)
	{
		this.footWashNum = footWashNum;
	}
	public int getPicnicNum()
	{
		return picnicNum;
	}
	public void setPicnicNum(int picnicNum)
	{
		this.picnicNum = picnicNum;
	}
	public int getWaterStationNum()
	{
		return waterStationNum;
	}
	public void setWaterStationNum(int waterStationNum)
	{
		this.waterStationNum = waterStationNum;
	}
	public String getMetalBarricade()
	{
		return metalBarricade;
	}
	public void setMetalBarricade(String metalBarricade)
	{
		this.metalBarricade = metalBarricade;
	}
	public String getPicnicTable()
	{
		return picnicTable;
	}
	public void setPicnicTable(String picnicTable)
	{
		this.picnicTable = picnicTable;
	}
	public String getWhiteFence()
	{
		return whiteFence;
	}
	public void setWhiteFence(String whiteFence)
	{
		this.whiteFence = whiteFence;
	}
	public String getUmbrella()
	{
		return umbrella;
	}
	public void setUmbrella(String umbrella)
	{
		this.umbrella = umbrella;
	}
	public String getBistroTable()
	{
		return bistroTable;
	}
	public void setBistroTable(String bistroTable)
	{
		this.bistroTable = bistroTable;
	}
	public String getRentalNotes()
	{
		return rentalNotes;
	}
	public void setRentalNotes(String rentalNotes)
	{
		this.rentalNotes = rentalNotes;
	}
	public int getInflateOne()
	{
		return inflateOne;
	}
	public void setInflateOne(int inflateOne)
	{
		this.inflateOne = inflateOne;
	}
	public String getInflateOneSize()
	{
		return inflateOneSize;
	}
	public void setInflateOneSize(String inflateOneSize)
	{
		this.inflateOneSize = inflateOneSize;
	}
	public int getInflateTwo()
	{
		return inflateTwo;
	}
	public void setInflateTwo(int inflateTwo)
	{
		this.inflateTwo = inflateTwo;
	}
	public String getInflateTwoSize()
	{
		return inflateTwoSize;
	}
	public void setInflateTwoSize(String inflateTwoSize)
	{
		this.inflateTwoSize = inflateTwoSize;
	}
	public int getGamesNum()
	{
		return gamesNum;
	}
	public void setGamesNum(int gamesNum)
	{
		this.gamesNum = gamesNum;
	}
	public String getGamesType()
	{
		return gamesType;
	}
	public void setGamesType(String gamesType)
	{
		this.gamesType = gamesType;
	}
	public String getGamesSize()
	{
		return gamesSize;
	}
	public void setGamesSize(String gamesSize)
	{
		this.gamesSize = gamesSize;
	}
	public int getFoodTruckNum()
	{
		return foodTruckNum;
	}
	public void setFoodTruckNum(int foodTruckNum)
	{
		this.foodTruckNum = foodTruckNum;
	}
	public int getTrailerNum()
	{
		return trailerNum;
	}
	public void setTrailerNum(int trailerNum)
	{
		this.trailerNum = trailerNum;
	}
	public String getTrailerDimension()
	{
		return trailerDimension;
	}
	public void setTrailerDimension(String trailerDimension)
	{
		this.trailerDimension = trailerDimension;
	}
	public int getDisplayCarNum()
	{
		return displayCarNum;
	}
	public void setDisplayCarNum(int displayCarNum)
	{
		this.displayCarNum = displayCarNum;
	}
	public String getDispayCarDetails()
	{
		return dispayCarDetails;
	}
	public void setDispayCarDetails(String dispayCarDetails)
	{
		this.dispayCarDetails = dispayCarDetails;
	}
	public int getDisplayTruckNum()
	{
		return displayTruckNum;
	}
	public void setDisplayTruckNum(int displayTruckNum)
	{
		this.displayTruckNum = displayTruckNum;
	}
	public String getDisplayTruckDetails()
	{
		return displayTruckDetails;
	}
	public void setDisplayTruckDetails(String displayTruckDetails)
	{
		this.displayTruckDetails = displayTruckDetails;
	}
	public int getAttendeeNum()
	{
		return attendeeNum;
	}
	public void setAttendeeNum(int attendeeNum)
	{
		this.attendeeNum = attendeeNum;
	}
	public String getAcknowledgement()
	{
		return acknowledgement;
	}
	public void setAcknowledgement(String acknowledgement)
	{
		this.acknowledgement = acknowledgement;
	}
	//constructors
	public Event(String eventIdentifier, String firstName, String lastName, String eventName, String eStartDate,
			String eStartTime, String eEndDate, String eEndTime, String eSetupDate, String eSetupTime,
			String eCleanupDate, String eCleanupTime, String splashPadNo, String splashPadOne, String spashPadTwo,
			String pressureOne, String pressureLevelOne, String pressureTwo, String pressureLevelTwo,
			String pressureThree, String pressureLevelThree, String pressureFour, String pressureLevelFour,
			int chairNum, int fenceNumb, int barricadeNum, int shitterNum, int handWashNum, int footWashNum,
			int picnicNum, int waterStationNum, String metalBarricade, String picnicTable, String whiteFence,
			String umbrella, String bistroTable, String rentalNotes, int inflateOne, String inflateOneSize,
			int inflateTwo, String inflateTwoSize, int gamesNum, String gamesType, String gamesSize, int foodTruckNum,
			int trailerNum, String trailerDimension, int displayCarNum, String dispayCarDetails, int displayTruckNum,
			String displayTruckDetails, int attendeeNum, String acknowledgement)
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
		this.splashPadNo = splashPadNo;
		this.splashPadOne = splashPadOne;
		this.spashPadTwo = spashPadTwo;
		this.pressureOne = pressureOne;
		this.pressureLevelOne = pressureLevelOne;
		this.pressureTwo = pressureTwo;
		this.pressureLevelTwo = pressureLevelTwo;
		this.pressureThree = pressureThree;
		this.pressureLevelThree = pressureLevelThree;
		this.pressureFour = pressureFour;
		this.pressureLevelFour = pressureLevelFour;
		this.chairNum = chairNum;
		this.fenceNumb = fenceNumb;
		this.barricadeNum = barricadeNum;
		this.shitterNum = shitterNum;
		this.handWashNum = handWashNum;
		this.footWashNum = footWashNum;
		this.picnicNum = picnicNum;
		this.waterStationNum = waterStationNum;
		this.metalBarricade = metalBarricade;
		this.picnicTable = picnicTable;
		this.whiteFence = whiteFence;
		this.umbrella = umbrella;
		this.bistroTable = bistroTable;
		this.rentalNotes = rentalNotes;
		this.inflateOne = inflateOne;
		this.inflateOneSize = inflateOneSize;
		this.inflateTwo = inflateTwo;
		this.inflateTwoSize = inflateTwoSize;
		this.gamesNum = gamesNum;
		this.gamesType = gamesType;
		this.gamesSize = gamesSize;
		this.foodTruckNum = foodTruckNum;
		this.trailerNum = trailerNum;
		this.trailerDimension = trailerDimension;
		this.displayCarNum = displayCarNum;
		this.dispayCarDetails = dispayCarDetails;
		this.displayTruckNum = displayTruckNum;
		this.displayTruckDetails = displayTruckDetails;
		this.attendeeNum = attendeeNum;
		this.acknowledgement = acknowledgement;
	}
	public Event()
	{
	}
	public Event(int id, String eventIdentifier, String firstName, String lastName, String eventName, String eStartDate,
			String eStartTime, String eEndDate, String eEndTime, String eSetupDate, String eSetupTime,
			String eCleanupDate, String eCleanupTime, String splashPadNo, String splashPadOne, String spashPadTwo,
			String pressureOne, String pressureLevelOne, String pressureTwo, String pressureLevelTwo,
			String pressureThree, String pressureLevelThree, String pressureFour, String pressureLevelFour,
			int chairNum, int fenceNumb, int barricadeNum, int shitterNum, int handWashNum, int footWashNum,
			int picnicNum, int waterStationNum, String metalBarricade, String picnicTable, String whiteFence,
			String umbrella, String bistroTable, String rentalNotes, int inflateOne, String inflateOneSize,
			int inflateTwo, String inflateTwoSize, int gamesNum, String gamesType, String gamesSize, int foodTruckNum,
			int trailerNum, String trailerDimension, int displayCarNum, String dispayCarDetails, int displayTruckNum,
			String displayTruckDetails, int attendeeNum, String acknowledgement)
	{
		this.id = id;
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
		this.splashPadNo = splashPadNo;
		this.splashPadOne = splashPadOne;
		this.spashPadTwo = spashPadTwo;
		this.pressureOne = pressureOne;
		this.pressureLevelOne = pressureLevelOne;
		this.pressureTwo = pressureTwo;
		this.pressureLevelTwo = pressureLevelTwo;
		this.pressureThree = pressureThree;
		this.pressureLevelThree = pressureLevelThree;
		this.pressureFour = pressureFour;
		this.pressureLevelFour = pressureLevelFour;
		this.chairNum = chairNum;
		this.fenceNumb = fenceNumb;
		this.barricadeNum = barricadeNum;
		this.shitterNum = shitterNum;
		this.handWashNum = handWashNum;
		this.footWashNum = footWashNum;
		this.picnicNum = picnicNum;
		this.waterStationNum = waterStationNum;
		this.metalBarricade = metalBarricade;
		this.picnicTable = picnicTable;
		this.whiteFence = whiteFence;
		this.umbrella = umbrella;
		this.bistroTable = bistroTable;
		this.rentalNotes = rentalNotes;
		this.inflateOne = inflateOne;
		this.inflateOneSize = inflateOneSize;
		this.inflateTwo = inflateTwo;
		this.inflateTwoSize = inflateTwoSize;
		this.gamesNum = gamesNum;
		this.gamesType = gamesType;
		this.gamesSize = gamesSize;
		this.foodTruckNum = foodTruckNum;
		this.trailerNum = trailerNum;
		this.trailerDimension = trailerDimension;
		this.displayCarNum = displayCarNum;
		this.dispayCarDetails = dispayCarDetails;
		this.displayTruckNum = displayTruckNum;
		this.displayTruckDetails = displayTruckDetails;
		this.attendeeNum = attendeeNum;
		this.acknowledgement = acknowledgement;
	}
	@Override
	public String toString()
	{
		return "Event [id=" + id + ", eventIdentifier=" + eventIdentifier + ", firstName=" + firstName + ", lastName="
				+ lastName + ", eventName=" + eventName + ", eStartDate=" + eStartDate + ", eStartTime=" + eStartTime
				+ ", eEndDate=" + eEndDate + ", eEndTime=" + eEndTime + ", eSetupDate=" + eSetupDate + ", eSetupTime="
				+ eSetupTime + ", eCleanupDate=" + eCleanupDate + ", eCleanupTime=" + eCleanupTime + ", splashPadNo="
				+ splashPadNo + ", splashPadOne=" + splashPadOne + ", spashPadTwo=" + spashPadTwo + ", pressureOne="
				+ pressureOne + ", pressureLevelOne=" + pressureLevelOne + ", pressureTwo=" + pressureTwo
				+ ", pressureLevelTwo=" + pressureLevelTwo + ", pressureThree=" + pressureThree
				+ ", pressureLevelThree=" + pressureLevelThree + ", pressureFour=" + pressureFour
				+ ", pressureLevelFour=" + pressureLevelFour + ", chairNum=" + chairNum + ", fenceNumb=" + fenceNumb
				+ ", barricadeNum=" + barricadeNum + ", shitterNum=" + shitterNum + ", handWashNum=" + handWashNum
				+ ", footWashNum=" + footWashNum + ", picnicNum=" + picnicNum + ", waterStationNum=" + waterStationNum
				+ ", metalBarricade=" + metalBarricade + ", picnicTable=" + picnicTable + ", whiteFence=" + whiteFence
				+ ", umbrella=" + umbrella + ", bistroTable=" + bistroTable + ", rentalNotes=" + rentalNotes
				+ ", inflateOne=" + inflateOne + ", inflateOneSize=" + inflateOneSize + ", inflateTwo=" + inflateTwo
				+ ", inflateTwoSize=" + inflateTwoSize + ", gamesNum=" + gamesNum + ", gamesType=" + gamesType
				+ ", gamesSize=" + gamesSize + ", foodTruckNum=" + foodTruckNum + ", trailerNum=" + trailerNum
				+ ", trailerDimension=" + trailerDimension + ", displayCarNum=" + displayCarNum + ", dispayCarDetails="
				+ dispayCarDetails + ", displayTruckNum=" + displayTruckNum + ", displayTruckDetails="
				+ displayTruckDetails + ", attendeeNum=" + attendeeNum + ", acknowledgement=" + acknowledgement + "]";
	}
}
