/**
 * 
 */
package com.rtd.operator.dao;

import com.rtd.operator.model.EmployeeAccountAccessBean;
import com.rtd.operator.model.UserAccount;
import com.rtd.operator.service.HashingService;
import com.rtd.utils.StackTraceUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 * 
 */
public class UserAccountDAO extends AbstractDAO
{
	public String employeeId;

	private static final String CLASS_NAME = UserAccountDAO.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private HashingService hashingService;

	/**
	 * 
	 */
	public UserAccountDAO()
	{
		super();
	}

	/**
	 * @param userAccount
	 * @throws SQLException
	 */
	public void saveUserAccount(UserAccount userAccount) throws SQLException,
			Exception
	{
		LOG.info("saving userAccount for " + userAccount.getUsername());
		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("INSERT into OPERATOR_USERS(USERNAME,PASSWORD,IS_EMPLOYEE,SECURITY_QUESTION_1,SECURITY_QUESTION_2,SECURITY_ANSWER_1,SECURITY_ANSWER_2,ENABLED,OPERATOR_RTD_ID) VALUES(?,?,?,?,?,?,?,?,?)");

		try
		{
			statement.setString(1, userAccount.getUsername());
			statement.setString(2, getHashingService().encrypt(
					userAccount.getPassword()));
			statement.setBoolean(3, userAccount.isEmployee());
			statement.setString(4, userAccount.getSecurityQuestionOne());
			statement.setString(5, userAccount.getSecurityQuestionTwo());
			statement.setString(6, getHashingService().encrypt(
					userAccount.getSecurityAnswerOne()));
			statement.setString(7, getHashingService().encrypt(
					userAccount.getSecurityAnswerTwo()));
			statement.setBoolean(8, Boolean.TRUE);
			statement.setString(9, userAccount.getEmployeeNumber());
	
			statement.executeUpdate();
			
			statement.close();
			conn.close();
		}
		catch (Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		
		finally
		{
			statement.close();
			conn.close();
		}
	}

	/**
	 * @param username
	 * @throws SQLException
	 */
	public void saveUserAuthority(String username, String employeeNumber,
			boolean isEmployee) throws Exception
	{
		LOG.info("saveUserAuthority: " + username);
		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("INSERT into AUTHORITIES(OPERATOR_RTD_ID,AUTHORITY,USERNAME) VALUES(?,?,?)");
		
		try
		{
			statement.setString(1, employeeNumber);
			statement.setString(2, (isEmployee ? "ROLE_OPERATOR_EMP"
					: "ROLE_OPERATOR_CONT"));
			statement.setString(3, username);
	
			statement.executeUpdate();
			statement.close();
			conn.close();
		}
		catch(Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		finally
		{
			statement.close();
			conn.close();
		}

	}

	/**
	 * @param theBean
	 * @return returns true if the operator is verifiable as an ETL'd entity
	 * @throws SQLException
	 */
	public boolean isLegitimateOperator(final EmployeeAccountAccessBean theBean)
			throws Exception
	{
	  
	  LOG.debug("Validating operator... IsEmp:" + theBean.isEmployee());
	      //+ ", Emp#:" + theBean.getEmployeeNumber() 
	      //+ ", SSN:" + theBean.getLastFourSSNum().toString() 
	      //+ " - " + DBMS_CRYPTO.HASH(UTL_I18N.STRING_TO_RAW(theBean.getLastFourSSNum().toString()),3) 
	      //+ ", BDay:" +  theBean.getDateOfBirth());
	  
		boolean result = false;
		final Connection conn = getDataSource().getConnection();
		PreparedStatement statement = null;
		
		try
		{
			if (theBean.isEmployee())
			{
				statement = conn
						.prepareStatement("SELECT OPERATOR_RTD_ID as operator_rtd_id,"
								+ "OPERATOR_NAME as operator_name,"
								+ "OPERATOR_SS_NUM as operator_ss_num,"
								+ "OPERATOR_DOB as operator_dob, "
								+ "OPERATOR_UNION_CONTRACT_DATE as contract_date "
								+ "FROM OPERATOR_INFO where OPERATOR_RTD_ID = ? "
								+ "AND OPERATOR_SS_NUM = DBMS_CRYPTO.HASH(UTL_I18N.STRING_TO_RAW(?),3) "
								+ "AND OPERATOR_DOB = DBMS_CRYPTO.HASH(UTL_I18N.STRING_TO_RAW(?),3) ");
				
				
				statement.setString(1, theBean.getEmployeeNumber());
				statement.setString(2, theBean.getLastFourSSNum().toString());
				statement.setString(3, theBean.getDateOfBirth());
			}
	
			else
			{
				statement = conn
						.prepareStatement("SELECT OPERATOR_RTD_ID as operator_rtd_id,"
								+ "OPERATOR_NAME as operator_name "
								+ "FROM OPERATOR_INFO where OPERATOR_RTD_ID = ? ");
				
				statement.setString(1, theBean.getEmployeeNumber());			
			}
	
			final ResultSet rs = statement.executeQuery();
	
			if (rs.next())
			{
				String operatorName = rs.getString("operator_name");
				String lastName = operatorName.substring(0, operatorName
						.indexOf(','));
				
				if (theBean.isEmployee())
				{
					theBean.setLastName(lastName);
					result = true;
				}
				else
				{
					if (lastName.trim().equalsIgnoreCase(theBean.getLastName()))
					{
						result = true;
					}
				}
			}			
			rs.close();
			statement.close();
			conn.close();			
		}
		catch (Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		finally
		{		
			if (statement != null) {
				statement.close();
			}
			conn.close();
		}
		
		LOG.info("Employee " + theBean.getEmployeeNumber() + " valid? - " + result);
		return result;

	}

	/**
	 * Pass in the username that comes from the Principal provided in Spring
	 * Security. Use the username to query operator_users for the employeeId.
	 * 
	 * @param username
	 * @return the employee id of the user
	 * @throws Exception
	 */
	public final String getEmpId(String username) throws Exception
	{
		final Connection conn = getDataSource().getConnection();
		final PreparedStatement stmt = conn
				.prepareStatement("SELECT operator_rtd_id FROM operator_users WHERE username = ?");
		
		try
		{
				
			stmt.setString(1, username);
			final ResultSet rs = stmt.executeQuery();
			if (rs.next())
			{
				employeeId = rs.getString("operator_rtd_id");

			}						
			rs.close();
			stmt.close();
			conn.close();
		}
		catch (Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		
		finally
		{
			stmt.close();
			conn.close();
		}
		if (LOG.isDebugEnabled()) {
			LOG.debug("userName:" + username + " = employeeId:" + employeeId);
		}
		return employeeId;
	}

	public final void deleteUser(String employeeId) throws Exception
	{
		LOG.info("deleteUserAccount - " + employeeId);
		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("DELETE FROM OPERATOR_USERS WHERE OPERATOR_RTD_ID=? ");
		final PreparedStatement statement2 = conn
		.prepareStatement("DELETE FROM AUTHORITIES WHERE OPERATOR_RTD_ID=? ");
		try
		{
			statement.setString(1, employeeId);
			statement.execute();
			statement.close();
			
			statement2.setString(1, employeeId);
			statement2.execute();
			statement2.close();
			
			statement.close();
			statement2.close();
			conn.close();
			
		}
		catch(Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		
		finally
		{
			statement.close();
			statement2.close();
			conn.close();
		}
		LOG.info("Exiting deleteUser...");
	}

	public UserAccount findByUsername(final String aValue) throws Exception
	{
		UserAccount userAccount = null;
		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("SELECT USERNAME as username, "
						+ "IS_EMPLOYEE as isEmployee, "
						+ "SECURITY_QUESTION_1 secQuestion1,"
						+ "SECURITY_QUESTION_2 secQuestion2, "
						+ "SECURITY_ANSWER_1 as secAnswer1, "
						+ "SECURITY_ANSWER_2 as secAnswer2, "
						+ "OPERATOR_RTD_ID as operator_rtd_id "
						+ "FROM OPERATOR_USERS where USERNAME = ?");

		try
		{
			statement.setString(1, aValue);
			final ResultSet rs = statement.executeQuery();
	
			if (rs.next())
			{
				userAccount = new UserAccount();
				userAccount.setUsername(rs.getString("username"));
				userAccount.setIsEmployee(rs.getBoolean("isEmployee"));
				userAccount.setSecurityQuestionOne(rs.getString("secQuestion1"));
				userAccount.setSecurityQuestionTwo(rs.getString("secQuestion2"));
				userAccount.setSecurityAnswerOne(rs.getString("secAnswer1"));
				userAccount.setSecurityAnswerTwo(rs.getString("secAnswer2"));
				userAccount.setEmployeeNumber(rs.getString("operator_rtd_id"));
			}
			rs.close();
			statement.close();
			conn.close();
		}
		catch (Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		finally
		{
			statement.close();		
			conn.close();
		}
		return userAccount;

	}

	public void updateUserAccountPasswords(final UserAccount userAccount)
			throws Exception
	{
		LOG.info("updateUserAccount - " + userAccount.getUsername());
		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("UPDATE OPERATOR_USERS set password=? WHERE USERNAME=? ");
		
		try
		{
			statement.setString(1, getHashingService().encrypt(
					userAccount.getPassword()));
			statement.setString(2, userAccount.getUsername());
			statement.execute();
		
			statement.close();
			conn.close();
		}
		
		catch (Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		
		finally
		{
			statement.close();
			conn.close();
		}
		
	}

	public boolean findByEmployeeNumber(final String employeeId)
			throws Exception
	{
		boolean result = false;

		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("SELECT * from OPERATOR_USERS WHERE OPERATOR_RTD_ID=? ");

		try		
		{
			statement.setString(1, employeeId);
			final ResultSet rs = statement.executeQuery();
	
			if (rs.next())
			{
				result = true;
			}
			rs.close();
			statement.close();
			conn.close();
		}
		catch(Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}

		finally
		{		
			statement.close();
			conn.close();
		}

		return result;

	}

	/**
	 * @param theHashingService
	 */
	public void setHashingService(final HashingService theHashingService)
	{
		this.hashingService = theHashingService;
	}

	/**
	 * @return hashingService
	 */
	public HashingService getHashingService()
	{
		return this.hashingService;
	}

}
