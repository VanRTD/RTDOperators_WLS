/**
 * 
 */
package com.rtd.operator.model;

import java.util.Date;

/**
 * @author Justin Hancock
 * 
 */
public class EmployeeUserAccount extends UserAccount
{

	private String employeeNumber;
	private String socialSecurityLastFour;
	private Date dateOfBirth;

	public EmployeeUserAccount()
	{
		super();
	}

	public EmployeeUserAccount(final String employeeNumber)
	{
		super();
		this.employeeNumber = employeeNumber;
	}

	public String getEmployeeNumber()
	{
		return employeeNumber;
	}

	public void setEmployeeNumber(final String employeeNumber)
	{
		this.employeeNumber = employeeNumber;
	}

	public String getSocialSecurityLastFour()
	{
		return socialSecurityLastFour;
	}

	public void setSocialSecurityLastFour(final String socialSecurityLastFour)
	{
		this.socialSecurityLastFour = socialSecurityLastFour;
	}

	public Date getDateOfBirth()
	{
		return dateOfBirth;
	}

	public void setDateOfBirth(final Date dateOfBirth)
	{
		this.dateOfBirth = dateOfBirth;
	}

	/**
	 * @return 
	 */
	public boolean isComplete()
	{
		return (getDateOfBirth() != null && getSocialSecurityLastFour() != null && getEmployeeNumber() != null);
	}

}
