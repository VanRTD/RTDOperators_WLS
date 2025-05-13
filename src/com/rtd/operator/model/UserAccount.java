/**
 * 
 */
package com.rtd.operator.model;

/**
 * @author Justin Hancock
 * 
 */
public class UserAccount
{

	private String username;
	private String password;
	private String confirmPassword;
	private String employeeNumber;
	public boolean isEmployee;
	private String securityQuestionOne;
	private String securityQuestionTwo;
	private String securityAnswerOne;
	private String securityAnswerTwo;

	public UserAccount()
	{
		super();
	}

	/**
	 * @return username
	 */
	public String getUsername()
	{
		return username;
	}

	/**
	 * @param username
	 */
	public void setUsername(final String username)
	{
		this.username = username;
	}

	/**
	 * @return confirmPassword
	 */
	public String getConfirmPassword()
	{
		return confirmPassword;
	}

	/**
	 * @param aPassword
	 */
	public void setConfirmPassword(final String aPassword)
	{
		this.confirmPassword = aPassword;
	}

	/**
	 * @return password
	 */
	public String getPassword()
	{
		return password;
	}

	/**
	 * @param password
	 */
	public void setPassword(final String password)
	{
		this.password = password;
	}

	/**
	 * @return true if this UserAccount is that of an employee, false if that of
	 *         a contractor
	 */
	public boolean isEmployee()
	{
		return isEmployee;
	}

	/**
	 * @param aValue
	 */
	public void setIsEmployee(final boolean aValue)
	{
		this.isEmployee = aValue;
	}

	/**
	 * @return securityAnswerOne
	 */
	public String getSecurityAnswerOne()
	{
		return securityAnswerOne;
	}

	/**
	 * @param securityAnswerOne
	 */
	public void setSecurityAnswerOne(final String securityAnswerOne)
	{
		this.securityAnswerOne = securityAnswerOne;
	}

	/**
	 * @return securityAnswerTwo
	 */
	public String getSecurityAnswerTwo()
	{
		return securityAnswerTwo;
	}

	/**
	 * @param securityAnswerTwo
	 */
	public void setSecurityAnswerTwo(final String securityAnswerTwo)
	{
		this.securityAnswerTwo = securityAnswerTwo;
	}

	/**
	 * @return securityQuestionOne
	 */
	public String getSecurityQuestionOne()
	{
		return securityQuestionOne;
	}

	/**
	 * @param securityQuestionOne
	 */
	public void setSecurityQuestionOne(final String securityQuestionOne)
	{
		this.securityQuestionOne = securityQuestionOne;
	}

	/**
	 * @return securityQuestionTwo
	 */
	public String getSecurityQuestionTwo()
	{
		return securityQuestionTwo;
	}

	/**
	 * @param securityQuestionTwo
	 */
	public void setSecurityQuestionTwo(final String securityQuestionTwo)
	{
		this.securityQuestionTwo = securityQuestionTwo;
	}

	/**
	 * @return returns the RTD employee ID
	 */
	public String getEmployeeNumber()
	{
		return employeeNumber;
	}

	/**
	 * @param employeeId
	 */
	public void setEmployeeNumber(String employeeId)
	{
		this.employeeNumber = employeeId;
	}

	public void setEmployee(boolean isEmployee)
	{
		this.isEmployee = isEmployee;
	}

}
