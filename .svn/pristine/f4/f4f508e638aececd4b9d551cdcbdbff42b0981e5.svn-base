/**
 * 
 */
package com.rtd.operator.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.rtd.operator.model.DriverAlert;
import com.rtd.utils.StackTraceUtil;

/**
 * @author Justin Hancock
 * @author Van Tran
 * 
 */
public class DriverAlertsDAO extends AbstractDAO
{
	// set up logging
	private static final String CLASS_NAME = DriverAlertsDAO.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	/**
	 * 
	 */
	public DriverAlertsDAO()
	{
		super();
	}

	/*
	public List<DriverAlert> fetchDriverAlerts() throws SQLException, Exception
	{
		List<DriverAlert> result = new ArrayList<DriverAlert>();

		final Connection conn = getDataSource().getConnection();
		LOG.info("get driver alert data");
		final PreparedStatement statement = conn
				.prepareStatement("SELECT ALERT_DESCRIPTION as alertDescription, "
						+ "TO_CHAR(DRIVER_ALERT_DETAIL) as driverAlertDetail, "
						+ "UPDATE_DT as updateDate, "
						+ "EFFECTIVE_DT as driverAlertEffectiveDates "
						+ "FROM DRIVER_ALERTS "
						+ "WHERE TO_DT >= trunc(sysdate) "
						+ "AND FROM_DT <= trunc(sysdate) "
						+ "ORDER BY ALERT_DESCRIPTION");
		
		try
		{
		
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				DriverAlert da = new DriverAlert();
				da.setAlertDescription(rs.getString("alertDescription"));
				da.setDriverAlertDetail(rs.getString("driverAlertDetail"));
				da.setEffectiveDate(rs.getString("driverAlertEffectiveDates"));
				da.setUpdateDate(rs.getDate("updateDate"));
				result.add(da);
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
  */
	
}
