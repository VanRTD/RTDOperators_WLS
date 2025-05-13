/**
 * 
 */
package com.rtd.operator.model;


/**
 * @author Justin Hancock
 * 
 */
public class EmployeeAccountAccessBean
{
	
	private String dateOfBirth;
	private String employeeNumber;
	private String lastFourSSNum;
	private UserAccount userAccount;
	private String lastName;
	private String seniorityDate;
	private boolean isEmployee;
	// this var is used to show that we've done an initial lookup of the user in the db,
	// and have verified that they're in the hr data table.
	private boolean isVerified;
	

	/**
	 * 
	 */
	public EmployeeAccountAccessBean()
	{
		super();
	}

	/**
	 * @return dateOfBirth
	 */
	public String getDateOfBirth()
	{
		return dateOfBirth;
	}

	/**
	 * @param dateOfBirth
	 */
	public void setDateOfBirth(final String dateOfBirth)
	{
		this.dateOfBirth = dateOfBirth;
	}

	/**
	 * @return employeeNumber
	 */
	public String getEmployeeNumber()
	{
		return employeeNumber;
	}

	/**
	 * @param employeeNumber
	 */
	public void setEmployeeNumber(final String employeeNumber)
	{
		this.employeeNumber = employeeNumber;
	}

	/**
	 * @return last four digits of social security number
	 */
	public String getLastFourSSNum()
	{
		return lastFourSSNum;
	}

	/**
	 * @param lastFourSSNum
	 */
	public void setLastFourSSNum(final String lastFourSSNum)
	{
		this.lastFourSSNum = lastFourSSNum;
	}
	
	/**
	 * @return the userAccount
	 */
	public UserAccount getUserAccount()
	{
		return this.userAccount;
	}
	
	/**
	 * @param anAccount
	 */
	public void setUserAccount(final UserAccount anAccount)
	{
		this.userAccount = anAccount;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName()
	{
		return lastName;
	}

	/**
	 * @param lastName
	 */
	public void setLastName(final String lastName)
	{
		this.lastName = lastName;
	}

	/**
	 * @return the seniorityDate
	 */
	public String getSeniorityDate()
	{
		return seniorityDate;
	}

	/**
	 * @param seniorityDate
	 */
	public void setSeniorityDate(final String seniorityDate)
	{
		this.seniorityDate = seniorityDate;
	}

	/**
	 * @return true if employee, false if contractor
	 */
	public boolean isEmployee()
	{
		return isEmployee;
	}

	/**
	 * @param isEmployee
	 */
	public void setIsEmployee(boolean isEmployee)
	{
		this.isEmployee = isEmployee;
	}

	/**
	 * @return true if the user exists in the ETL'd data, false otherwise
	 */
	public boolean isVerified()
	{
		return isVerified;
	}

	/**
	 * @param isVerified
	 */
	public void setVerified(boolean isVerified)
	{
		this.isVerified = isVerified;
	}

}
