/**
 * 
 */
package com.rtd.operator.model;

import java.util.Date;

/**
 * @author Justin Hancock
 * 
 */
public class ContractorUserAccount extends UserAccount
{

	private String lastName;
	private String employerName;
	private Date anniversaryDate;
	private String firstName;

	public ContractorUserAccount()
	{
		super();
	}

	public String getFirstName()
	{
		return firstName;
	}

	public void setFirstName(final String firstName)
	{
		this.firstName = firstName;
	}

	public String getLastName()
	{
		return lastName;
	}

	public void setLastName(final String lastName)
	{
		this.lastName = lastName;
	}

	public String getEmployerName()
	{
		return employerName;
	}

	public void setEmployerName(final String employerName)
	{
		this.employerName = employerName;
	}

	public Date getAnniversaryDate()
	{
		return anniversaryDate;
	}

	public void setAnniversaryDate(final Date anniversaryDate)
	{
		this.anniversaryDate = anniversaryDate;
	}

}
