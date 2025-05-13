/**
 * 
 */
package com.rtd.operator.model;

import java.util.Date;

/**
 * @author Justin Hancock
 * 
 */
public class TransportationBulletin
{

	private Integer id;
	private String bulletinNumber;
	private Date bulletinDate;
	private String bulletinFor;
	private String subject;
	private String bulletinFilename;
	private Integer bulletinNumberSequence;
	private String bulletinType;
	private String bulletinTRYear;

	/**
	 * 
	 */
	public TransportationBulletin()
	{
		super();
	}

	/**
	 * @param bulletinDate
	 * @param bulletinFilename
	 * @param bulletinFor
	 * @param bulletinNumber
	 * @param bulletinSubject
	 * @return returns a new instance of TransportationBulletin, the fields
	 *         populated with the args
	 */
	public static TransportationBulletin newInstance(
			java.sql.Timestamp bulletinDate, String bulletinFilename,
			String bulletinFor, String bulletinNumber, String bulletinSubject, String bulletinTRYear)
	{
		TransportationBulletin result = new TransportationBulletin();
		result.setBulletinDate(new Date(bulletinDate.getTime()));
		result.setBulletinFilename(bulletinFilename);
		result.setBulletinFor(bulletinFor);
		result.setBulletinNumber(bulletinNumber);
		result.setSubject(bulletinSubject);
		result.setBulletinTRYear(bulletinTRYear);
		return result;
	}

	/**
	 * @return returns the id
	 */
	public Integer getId()
	{
		return id;
	}

	/**
	 * @param id
	 */
	public void setId(Integer id)
	{
		this.id = id;
	}

	/**
	 * @return returns the bulletinNumber
	 */
	public String getBulletinNumber()
	{
		return bulletinNumber;
	}

	/**
	 * @param bulletinNumber
	 */
	public void setBulletinNumber(String bulletinNumber)
	{
		this.bulletinNumber = bulletinNumber;
	}

	/**
	 * @return returns the bulletinDate
	 */
	public Date getBulletinDate()
	{
		return bulletinDate;
	}

	/**
	 * @param bulletinDate
	 */
	public void setBulletinDate(Date bulletinDate)
	{
		this.bulletinDate = bulletinDate;
	}

	/**
	 * @return returns the bulletinFor
	 */
	public String getBulletinFor()
	{
		return bulletinFor;
	}

	/**
	 * @param bulletinFor
	 */
	public void setBulletinFor(String bulletinFor)
	{
		this.bulletinFor = bulletinFor;
	}

	/**
	 * @return returns the subject
	 */
	public String getSubject()
	{
		return subject;
	}

	/**
	 * @param subject
	 */
	public void setSubject(String subject)
	{
		this.subject = subject;
	}

	/**
	 * @return returns the bulletinFilename
	 */
	public String getBulletinFilename()
	{
		return bulletinFilename;
	}

	/**
	 * @param bulletinFilename
	 */
	public void setBulletinFilename(String bulletinFilename)
	{
		this.bulletinFilename = bulletinFilename;
	}

	/**
	 * @return returns the bulletinNumberSequence
	 */
	public Integer getBulletinNumberSequence()
	{
		return bulletinNumberSequence;
	}

	/**
	 * @param bulletinNumberSequence
	 */
	public void setBulletinNumberSequence(Integer bulletinNumberSequence)
	{
		this.bulletinNumberSequence = bulletinNumberSequence;
	}

	/**
	 * @return return the bulletinType
	 */
	public String getBulletinType()
	{
		return bulletinType;
	}

	/**
	 * @param bulletinType
	 */
	public void setBulletinType(String bulletinType)
	{
		this.bulletinType = bulletinType;
	}

	/**
	 * @return return the bulletinTRYear
	 */
	public String getBulletinTRYear() {
		return bulletinTRYear;
	}
	
	/**
	 * @param bulletinTRYear
	 */
	public void setBulletinTRYear(String bulletinTRYear) {
		this.bulletinTRYear = bulletinTRYear;
	}

}
