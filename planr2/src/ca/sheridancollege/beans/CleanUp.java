package ca.sheridancollege.beans;

import javax.persistence.Embeddable;

@Embeddable
public class CleanUp
{
	private String cleanStartDate;
	private String cleanStartTime;
	private String cleanEndDate;
	private String cleanEndTime;
	public String getCleanStartDate()
	{
		return cleanStartDate;
	}
	public void setCleanStartDate(String cleanStartDate)
	{
		this.cleanStartDate = cleanStartDate;
	}
	public String getCleanStartTime()
	{
		return cleanStartTime;
	}
	public void setCleanStartTime(String cleanStartTime)
	{
		this.cleanStartTime = cleanStartTime;
	}
	public String getCleanEndDate()
	{
		return cleanEndDate;
	}
	public void setCleanEndDate(String cleanEndDate)
	{
		this.cleanEndDate = cleanEndDate;
	}
	public String getCleanEndTime()
	{
		return cleanEndTime;
	}
	public void setCleanEndTime(String cleanEndTime)
	{
		this.cleanEndTime = cleanEndTime;
	}
	
	

}
