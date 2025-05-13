package com.rtd.operator.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.rtd.utils.StackTraceUtil;



public class DayTypeDAO extends AbstractDAO
{

	// set up logging
	private static final String CLASS_NAME = DayTypeDAO.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	public DayTypeDAO()
	{
		super();
	}

	/**
	 * getDayType is used to determine what type of service day/schedule that
	 * the driver will run. Run numbers are appended with a W, U, or A.
	 * 
	 * W - Weekday A - Saturday U - Sunday / Holiday
	 * 
	 * So in order to get more detailed information regarding a run we need to
	 * append one of these letters to the run number.
	 * 
	 * @param validDate
	 * @return dayType (W,A,U)
	 */
	/*
	public String getDayType(Date validDate) throws Exception
	{
		String dayType = null;
		Connection con;
		long t = validDate.getTime();
		java.sql.Date dt = new java.sql.Date(t);
		con = getDataSource().getConnection();
		final PreparedStatement stmt = con.prepareStatement("select day_type from w_service_type_calendar where calendar_date = ?");

		try
		{
			LOG.info("get the day type based on the date");			
			stmt.setDate(1, dt);
			final ResultSet rs = stmt.executeQuery();

			while (rs.next())
			{
				dayType = rs.getString("day_type");
			}

			stmt.close();
			rs.close();
			con.close();
			LOG.info("Connection closed on Day Type Query");
		}
		catch (SQLException e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		
		finally
		{
			stmt.close();			
			con.close();
		}

		return dayType;
	}
  */
	
}
