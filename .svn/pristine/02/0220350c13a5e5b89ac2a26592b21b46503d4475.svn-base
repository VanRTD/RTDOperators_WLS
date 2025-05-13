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

import com.rtd.operator.model.Detour;
import com.rtd.operator.model.DetourRoute;
import com.rtd.utils.StackTraceUtil;

/**
 * @author Van Tran
 * 
 */
public class DetourDAO extends AbstractDAO
{
	// set up logging
	private static final String CLASS_NAME = DetourDAO.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	/**
	 * 
	 */
	public DetourDAO()
	{
		super();
	}

	/*
	public List<Detour> fetchDetours() throws SQLException, Exception
	{
		List<Detour> result = new ArrayList<Detour>();

		final Connection conn = getDataSource().getConnection();
		LOG.info("get Public & In-house detour data");
		final PreparedStatement statement = conn
				.prepareStatement("SELECT OTHER_DESCRIPTION as otherInfo, "
						+ "TO_CHAR(DETOUR_DETAIL) as detourDetail, "
						+ "DECODE(DETOUR_TYPE, 1, 'Public', "
						+ "2, 'In-house') as detourType, "
						+ "UPDATE_DT as updateDate, "
						+ "EFFECTIVE_DT as detourEffectiveDates "
						+ "FROM DETOURS " + "WHERE DETOUR_TYPE IN (1,2) "
						+ "AND OTHER_DESCRIPTION IS NOT NULL "
						+ "AND TO_DT >= trunc(sysdate) "
						+ "AND FROM_DT <= trunc(sysdate) "
						+ "ORDER BY OTHER_DESCRIPTION");

		try
		{
		
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				Detour dt = new Detour();
				dt.setOtherInfo(rs.getString("otherInfo"));
				dt.setDetourDetail(rs.getString("detourDetail"));
				dt.setDetourType(rs.getString("detourType"));
				dt.setEffectiveDate(rs.getString("detourEffectiveDates"));
				dt.setUpdateDate(rs.getDate("updateDate"));
				result.add(dt);
	
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
	
	/**
	 * get Public & In-house detour route data
	 */
	/*
	public List<DetourRoute> fetchDetourRoute() throws SQLException, Exception
	{
		List<DetourRoute> result = new ArrayList<DetourRoute>();

		final Connection conn = getDataSource().getConnection();
		LOG.info("get Public & In-house detour route data");
		final PreparedStatement statement = conn
				.prepareStatement("SELECT DETOURS_ROUTE.ROUTE as route, "
						+ "TO_CHAR(DETOURS.DETOUR_DETAIL) as detourDetail, "
						+ "DECODE(DETOURS.DETOUR_TYPE, 1, 'Public', "
						+ "2, 'In-house') as detourType, "
						+ "DETOURS.UPDATE_DT as updateDate, "
						+ "DETOURS.EFFECTIVE_DT as detourEffectiveDates "
						+ "FROM DETOURS_ROUTE, DETOURS "
						+ "WHERE DETOURS_ROUTE.DETOUR_ID = DETOURS.DETOUR_ID "
						+ "AND DETOURS.DETOUR_TYPE IN (1,2) "
						+ "AND DETOURS.TO_DT >= trunc(sysdate) "
						+ "AND DETOURS.FROM_DT <= trunc(sysdate) "
						+ "ORDER BY DETOURS_ROUTE.ROUTE_SEQUENCE, DETOURS_ROUTE.ROUTE ");
		
		try
		{
		
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				DetourRoute dtr = new DetourRoute();
				dtr.setRoute(rs.getString("route"));
				dtr.setDetourDetail(rs.getString("detourDetail"));
				dtr.setDetourType(rs.getString("detourType"));
				dtr.setEffectiveDate(rs.getString("detourEffectiveDates"));
				dtr.setUpdateDate(rs.getDate("updateDate"));
				result.add(dtr);
	
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
