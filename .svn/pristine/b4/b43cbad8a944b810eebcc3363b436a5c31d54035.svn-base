package com.rtd.operator.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.springframework.security.Authentication;
import org.springframework.security.GrantedAuthority;
import org.springframework.security.context.SecurityContextHolder;
import org.springframework.security.userdetails.User;
import org.springframework.stereotype.Controller;


@Controller
public class BaseFormController
{
	private String successView;
	private String failureView;
	private Object commandBean;
	private String userName;
	public static final String DATE_FORMAT_NOW = "h:mm a";
	
	public BaseFormController()
	{
		super();
	}

	/**
	 * @return the successView (if added as a bean property)
	 * 
	 */
	public String getSuccessView()
	{
		return successView;
	}

	/**
	 * @param successView
	 * 
	 */
	public void setSuccessView(String successView)
	{
		this.successView = successView;
	}

	/**
	 * @return failureView (if added as a bean property)
	 * 
	 */
	public String getFailureView()
	{
		return failureView;
	}

	/**
	 * @param failureView
	 * 
	 */
	public void setFailureView(String failureView)
	{
		this.failureView = failureView;
	}

	public Object getCommandBean()
	{
		return commandBean;
	}

	public void setCommandBean(Object aCommandBean)
	{
		this.commandBean = aCommandBean;
	}

	/**
	 * @return a List<String> of hardcoded security questions
	 */
	public List<String> getSecurityQuestions()
	{
		List<String> result = new ArrayList<String>();
		result.add("What is the name of your favorite pet?");
		result.add("What is your mothers maiden name?");
		result.add("What street did you grow up on?");
		result.add("What city was your father born in?");

		return result;
	}

	/**
	 * Method to get the username from the Principal in Spring Security. The
	 * username may then be used for other functions to retrieve information
	 * regarding the user since the username will be unique.
	 * 
	 * A specific example would be the retrieval of the employeeId from
	 * UserAccountDAO.
	 * 
	 * This method was placed here in BaseFormController because all of the
	 * controllers will have access to this should in the future another need
	 * arise to get the employeeID or if the username is needed.
	 * 
	 * @return the userID
	 * 
	 */
	protected String getUserName()
	{
		User userPrincipal = (User) SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
		userName = userPrincipal.getUsername();
		return userName;
	}
	
	
	/**
	 * Method to return whether or not the logged in user is an admin user based
	 * on the information in the SecurityContextHolder. The method returns a boolean.
	 * If this method returns true then the user has a role of "ROLE_ADMIN"
	 * 
	 * this method is in the BaseFormController so all controllers will have access
	 * to this method in the event that an admin check is needed in the future.
	 * 
	 * @return admin
	 */
	 protected boolean isAdminRole()
	{
		 boolean admin = false;
		 Authentication authentic = SecurityContextHolder.getContext().getAuthentication();
		 for (final GrantedAuthority grantedauthority : authentic.getAuthorities())
		 {
			 if (grantedauthority.getAuthority().equals("ROLE_ADMIN"))
			 {
				 admin = true;
			 }
		 }
		return admin;
	} 

	/**
	 * @return returns the current day of the week
	 */
	protected String getDayOfWeek()
	{
		final DateFormat dayFormat = new SimpleDateFormat("EEEE");
		dayFormat.setTimeZone(TimeZone.getTimeZone("MST"));
		Date day = new java.util.Date();
		return dayFormat.format(day);
	}

	/**
	 * @return returns the current time
	 */
	protected String getCurrentTime()
	{
		final Calendar cal = Calendar.getInstance();
		final SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT_NOW);
		return sdf.format(cal.getTime());
	}

	/**
	 * @return returns the current year as 2 digits. This parameter value is
	 *         passed in TransportationBulletinController as a condition for the
	 *         query.
	 */
	protected String getThisYear()
	{
		final SimpleDateFormat currentYear = new SimpleDateFormat("yy");
		Date thisYear = new Date();
		return currentYear.format(thisYear);
	}

	/**
	 * @return returns the current year as 4 digits. This value is passed in
	 *         TransportationBulletinController for displaying in the jsp.
	 */
	protected String getThisYearFull()
	{
		final SimpleDateFormat currentYear = new SimpleDateFormat("yyyy");
		Date thisYear = new Date();
		return currentYear.format(thisYear);
	}

	/**
	 * @return returns the previous year as 4 digits. This value is passed in
	 *         TransportationBulletinController for displaying in the jsp.
	 */
	protected int getLastYearFull()
	{
		Calendar now = Calendar.getInstance();
		now = Calendar.getInstance();
		now.add(Calendar.YEAR, -1);
		return now.get(Calendar.YEAR);
	}

	/**
	 * @return returns the previous year as 2 digits. This parameter value is
	 *         passed in TransportationBulletinController as a condition for the
	 *         query.
	 */
	protected String getLastYear()
	{
		String prevYear = Integer.toString(getLastYearFull());
		String lastYear = prevYear.substring(2, 4);
		return lastYear;
	}

}
