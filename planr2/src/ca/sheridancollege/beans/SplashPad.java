package ca.sheridancollege.beans;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;

@Entity
@NamedQueries(
{ @NamedQuery(name = "SplashPad.getSplashList", query = "from SplashPad"),
		@NamedQuery(name = "SplashPad.byId", query = "from SplashPad where splashPadId=:splashPadId"),
		@NamedQuery(name = "EventPad.byId", query = "from SplashPad where eventId=:eventId")})
public class SplashPad
{
	@Id
	@GeneratedValue
	private int splashPadId;
	private String splashpadNo;
	private String splashPadOne;
	private String splashPadTwo;
	private String pressureOne;
	private String pressureLevelOne;
	private String pressureTwo;
	private String pressureLevelTwo;
	private String pressureThree;
	private String pressureLevelThree;
	private String pressureFour;
	private String pressureLevelFour;
	private String chairNum;
	private String fenceNum;
	private String barricadeNum;
	@Column(name = "portoletNum", nullable = true)
	private String shitterNum;
	private String handWashNum;
	private String footWashNum;
	private String picnicNum;
	private String waterStationNum;
	private String inlateOne;
	private String inflateOneSize;
	private String inflateTwoSize;
	private String inflateTwo;
	private String gamesNum;
	private String gamesType;
	private String gamesSize;
	private String foodTruckNum;
	private String trailerNum;
	private String trailerDimension;
	private String displayCarNum;
	private String displayCarDetails;
	private String displayTruckNum;
	private String displayTruckDetails;
	private String metalBarricade;
	private String picnicTable;
	private String whiteFence;
	private String umbrella;
	private String bistroTable;
	private String rentalNotes;
	private String attendeeNum;
	private String acknowledgement;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "eventId")
	private Event event;
	public int getSplashPadId()
	{
		return splashPadId;
	}
	public void setSplashPadId(int splashPadId)
	{
		this.splashPadId = splashPadId;
	}
	public String getSplashpadNo()
	{
		return splashpadNo;
	}
	public void setSplashpadNo(String splashpadNo)
	{
		this.splashpadNo = splashpadNo;
	}
	public String getSplashPadOne()
	{
		return splashPadOne;
	}
	public void setSplashPadOne(String splashPadOne)
	{
		this.splashPadOne = splashPadOne;
	}
	public String getSplashPadTwo()
	{
		return splashPadTwo;
	}
	public void setSplashPadTwo(String splashPadTwo)
	{
		this.splashPadTwo = splashPadTwo;
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
	public String getChairNum()
	{
		return chairNum;
	}
	public void setChairNum(String chairNum)
	{
		this.chairNum = chairNum;
	}
	public String getFenceNum()
	{
		return fenceNum;
	}
	public void setFenceNum(String fenceNum)
	{
		this.fenceNum = fenceNum;
	}
	public String getBarricadeNum()
	{
		return barricadeNum;
	}
	public void setBarricadeNum(String barricadeNum)
	{
		this.barricadeNum = barricadeNum;
	}
	public String getShitterNum()
	{
		return shitterNum;
	}
	public void setShitterNum(String shitterNum)
	{
		this.shitterNum = shitterNum;
	}
	public String getHandWashNum()
	{
		return handWashNum;
	}
	public void setHandWashNum(String handWashNum)
	{
		this.handWashNum = handWashNum;
	}
	public String getFootWashNum()
	{
		return footWashNum;
	}
	public void setFootWashNum(String footWashNum)
	{
		this.footWashNum = footWashNum;
	}
	public String getPicnicNum()
	{
		return picnicNum;
	}
	public void setPicnicNum(String picnicNum)
	{
		this.picnicNum = picnicNum;
	}
	public String getWaterStationNum()
	{
		return waterStationNum;
	}
	public void setWaterStationNum(String waterStationNum)
	{
		this.waterStationNum = waterStationNum;
	}
	public String getInlateOne()
	{
		return inlateOne;
	}
	public void setInlateOne(String inlateOne)
	{
		this.inlateOne = inlateOne;
	}
	public String getInflateOneSize()
	{
		return inflateOneSize;
	}
	public void setInflateOneSize(String inflateOneSize)
	{
		this.inflateOneSize = inflateOneSize;
	}
	public String getInflateTwoSize()
	{
		return inflateTwoSize;
	}
	public void setInflateTwoSize(String inflateTwoSize)
	{
		this.inflateTwoSize = inflateTwoSize;
	}
	public String getInflateTwo()
	{
		return inflateTwo;
	}
	public void setInflateTwo(String inflateTwo)
	{
		this.inflateTwo = inflateTwo;
	}
	public String getGamesNum()
	{
		return gamesNum;
	}
	public void setGamesNum(String gamesNum)
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
	public String getFoodTruckNum()
	{
		return foodTruckNum;
	}
	public void setFoodTruckNum(String foodTruckNum)
	{
		this.foodTruckNum = foodTruckNum;
	}
	public String getTrailerNum()
	{
		return trailerNum;
	}
	public void setTrailerNum(String trailerNum)
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
	public String getDisplayCarNum()
	{
		return displayCarNum;
	}
	public void setDisplayCarNum(String displayCarNum)
	{
		this.displayCarNum = displayCarNum;
	}
	public String getDisplayCarDetails()
	{
		return displayCarDetails;
	}
	public void setDisplayCarDetails(String displayCarDetails)
	{
		this.displayCarDetails = displayCarDetails;
	}
	public String getDisplayTruckNum()
	{
		return displayTruckNum;
	}
	public void setDisplayTruckNum(String displayTruckNum)
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
	public String getAttendeeNum()
	{
		return attendeeNum;
	}
	public void setAttendeeNum(String attendeeNum)
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
	public Event getEvent()
	{
		return event;
	}
	public void setEvent(Event event)
	{
		this.event = event;
	}
	public SplashPad(int splashPadId, String splashpadNo, String splashPadOne, String splashPadTwo, String pressureOne,
			String pressureLevelOne, String pressureTwo, String pressureLevelTwo, String pressureThree,
			String pressureLevelThree, String pressureFour, String pressureLevelFour, String chairNum, String fenceNum,
			String barricadeNum, String shitterNum, String handWashNum, String footWashNum, String picnicNum,
			String waterStationNum, String inlateOne, String inflateOneSize, String inflateTwoSize, String inflateTwo,
			String gamesNum, String gamesType, String gamesSize, String foodTruckNum, String trailerNum,
			String trailerDimension, String displayCarNum, String displayCarDetails, String displayTruckNum,
			String displayTruckDetails, String metalBarricade, String picnicTable, String whiteFence, String umbrella,
			String bistroTable, String rentalNotes, String attendeeNum, String acknowledgement, Event event)
	{
		this.splashPadId = splashPadId;
		this.splashpadNo = splashpadNo;
		this.splashPadOne = splashPadOne;
		this.splashPadTwo = splashPadTwo;
		this.pressureOne = pressureOne;
		this.pressureLevelOne = pressureLevelOne;
		this.pressureTwo = pressureTwo;
		this.pressureLevelTwo = pressureLevelTwo;
		this.pressureThree = pressureThree;
		this.pressureLevelThree = pressureLevelThree;
		this.pressureFour = pressureFour;
		this.pressureLevelFour = pressureLevelFour;
		this.chairNum = chairNum;
		this.fenceNum = fenceNum;
		this.barricadeNum = barricadeNum;
		this.shitterNum = shitterNum;
		this.handWashNum = handWashNum;
		this.footWashNum = footWashNum;
		this.picnicNum = picnicNum;
		this.waterStationNum = waterStationNum;
		this.inlateOne = inlateOne;
		this.inflateOneSize = inflateOneSize;
		this.inflateTwoSize = inflateTwoSize;
		this.inflateTwo = inflateTwo;
		this.gamesNum = gamesNum;
		this.gamesType = gamesType;
		this.gamesSize = gamesSize;
		this.foodTruckNum = foodTruckNum;
		this.trailerNum = trailerNum;
		this.trailerDimension = trailerDimension;
		this.displayCarNum = displayCarNum;
		this.displayCarDetails = displayCarDetails;
		this.displayTruckNum = displayTruckNum;
		this.displayTruckDetails = displayTruckDetails;
		this.metalBarricade = metalBarricade;
		this.picnicTable = picnicTable;
		this.whiteFence = whiteFence;
		this.umbrella = umbrella;
		this.bistroTable = bistroTable;
		this.rentalNotes = rentalNotes;
		this.attendeeNum = attendeeNum;
		this.acknowledgement = acknowledgement;
		this.event = event;
	}
	public SplashPad()
	{
	}
	@Override
	public String toString()
	{
		return "SplashPad [splashPadId=" + splashPadId + ", splashpadNo=" + splashpadNo + ", splashPadOne="
				+ splashPadOne + ", splashPadTwo=" + splashPadTwo + ", pressureOne=" + pressureOne
				+ ", pressureLevelOne=" + pressureLevelOne + ", pressureTwo=" + pressureTwo + ", pressureLevelTwo="
				+ pressureLevelTwo + ", pressureThree=" + pressureThree + ", pressureLevelThree=" + pressureLevelThree
				+ ", pressureFour=" + pressureFour + ", pressureLevelFour=" + pressureLevelFour + ", chairNum="
				+ chairNum + ", fenceNum=" + fenceNum + ", barricadeNum=" + barricadeNum + ", shitterNum=" + shitterNum
				+ ", handWashNum=" + handWashNum + ", footWashNum=" + footWashNum + ", picnicNum=" + picnicNum
				+ ", waterStationNum=" + waterStationNum + ", inlateOne=" + inlateOne + ", inflateOneSize="
				+ inflateOneSize + ", inflateTwoSize=" + inflateTwoSize + ", inflateTwo=" + inflateTwo + ", gamesNum="
				+ gamesNum + ", gamesType=" + gamesType + ", gamesSize=" + gamesSize + ", foodTruckNum=" + foodTruckNum
				+ ", trailerNum=" + trailerNum + ", trailerDimension=" + trailerDimension + ", displayCarNum="
				+ displayCarNum + ", displayCarDetails=" + displayCarDetails + ", displayTruckNum=" + displayTruckNum
				+ ", displayTruckDetails=" + displayTruckDetails + ", metalBarricade=" + metalBarricade
				+ ", picnicTable=" + picnicTable + ", whiteFence=" + whiteFence + ", umbrella=" + umbrella
				+ ", bistroTable=" + bistroTable + ", rentalNotes=" + rentalNotes + ", attendeeNum=" + attendeeNum
				+ ", acknowledgement=" + acknowledgement + ", event=" + event + "]";
	}

	
	

}
