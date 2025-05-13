package com.rtd.operator.dao;

import com.rtd.operator.model.AlertDetour;
import com.rtd.operator.model.AlertOtherRouteLineAffDTO;
import com.rtd.operator.model.AlertRouteDirectionDTO;
import com.rtd.utils.StackTraceUtil;

import java.io.IOException;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


public class AlertDetourDAO extends AbstractDAO
{
	// set up logging
	private static final String CLASS_NAME = AlertDetourDAO.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	/**
	 * 
	 */
	public AlertDetourDAO()
	{
		super();
	}

	/**
	 * Retrieves data for driver alerts with only General Description 
	 */
	public ArrayList<AlertDetour> fetchDriverAlerts() throws SQLException, Exception
	{
		ArrayList<AlertDetour> result = new ArrayList<AlertDetour>();

		final Connection conn = getDataSource().getConnection();
		
		// J Butler - This SQL accesses a table within the REP schema
		String sql = "SELECT AE.ALERT_EVENT_GENERAL_DESC as generalDesc, "
        + "TO_CHAR(AE.ALERT_EVENT_START_DATE, 'FMMonth DD, YYYY') as startDate, "
        + "DECODE( TO_CHAR(AE.ALERT_EVENT_START_DATE, 'HH:MI:SSAM'), '12:00:00AM', '', "
        + "      TO_CHAR(AE.ALERT_EVENT_START_DATE, 'FMHHFM:MIAM') ) as startTime, "
        + "TO_CHAR(AE.ALERT_EVENT_END_DATE, 'FMMonth DD, YYYY') as endDate, "
        + "DECODE( TO_CHAR(AE.ALERT_EVENT_END_DATE, 'HH:MI:SSAM'), '12:00:00AM', '', "
        + "      TO_CHAR(AE.ALERT_EVENT_END_DATE, 'FMHHFM:MIAM') ) as endTime, "
        + "AE.ALERT_EVENT_START_TIME_TYPE as startTimeType, "
        + "AE.ALERT_EVENT_END_TIME_TYPE as endTimeType, "
        + "AE.ALERT_EVENT_UPDATED_DATE as updatedDate, "
        + "TO_CHAR(AE.ALERT_EVENT_UPDATED_DATE, 'FMHHFM:MIAM') as updatedTime, "
        + "TO_CLOB(AE.ALERT_EVENT_INFO) as alertEventInfo "
        + "FROM ALERT_EVENTS AE "
        + "WHERE AE.ALERT_TYPE_ID = 2 "
        + "AND AE.ALERT_EVENT_GENERAL_DESC IS NOT NULL "
        + "AND ( AE.ALERT_EVENT_EFF_END_DATE >= sysdate OR AE.ALERT_EVENT_EFF_END_DATE IS NULL ) "
        + "AND AE.ALERT_EVENT_EFF_START_DATE <= sysdate "
        + "ORDER BY AE.ALERT_EVENT_GENERAL_DESC";
		
		if (LOG.isDebugEnabled()) {
      LOG.debug("get data for driver alerts with only General Description");
      LOG.debug("SQL: " + sql);
    }
		
		final PreparedStatement statement = conn
				.prepareStatement(sql);

		try
		{
		
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				AlertDetour dAlert = new AlertDetour();
				dAlert.setGeneralDesc(rs.getString("generalDesc"));
				dAlert.setStartDate(rs.getString("startDate"));
				dAlert.setStartTime(rs.getString("startTime"));
				dAlert.setEndDate(rs.getString("endDate"));
				dAlert.setEndTime(rs.getString("endTime"));
				dAlert.setStartTimeType(rs.getInt("startTimeType"));
				dAlert.setEndTimeType(rs.getInt("endTimeType"));
				dAlert.setUpdatedDate(rs.getDate("updatedDate"));
				dAlert.setUpdatedTime(rs.getString("updatedTime"));
				//retrieve content for CLOB field 
				dAlert.setAlertEventInfo(getClobContent(rs.getClob("alertEventInfo")));
				result.add(dAlert);
	
			}
			rs.close();
			statement.close();
			conn.close();			
		}
		catch(Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
			//e.printStackTrace();
		}
		finally
		{
			statement.close();
			conn.close();
		}		
		return result;
	}
	
	/**
	 * Retrieves data for Station/park-n-Ride Alert 
	 */
	public ArrayList<AlertDetour> fetchStationPNRAlerts() throws SQLException, Exception
	{
		ArrayList<AlertDetour> result = new ArrayList<AlertDetour>();

		final Connection conn = getDataSource().getConnection();
		String sql = "SELECT AE.ALERT_CATEGORY_DETAIL as alertCatDetail, "
        + "AE.ALERT_CATEGORY_ID alertCatID, "
        + "TO_CHAR(AE.ALERT_EVENT_START_DATE, 'FMMonth DD, YYYY') as startDate, "
        + "DECODE( TO_CHAR(AE.ALERT_EVENT_START_DATE, 'HH:MI:SSAM'), '12:00:00AM', '', "
        + "      TO_CHAR(AE.ALERT_EVENT_START_DATE, 'FMHHFM:MIAM') ) as startTime, "
        + "TO_CHAR(AE.ALERT_EVENT_END_DATE, 'FMMonth DD, YYYY') as endDate, "
        + "DECODE( TO_CHAR(AE.ALERT_EVENT_END_DATE, 'HH:MI:SSAM'), '12:00:00AM', '', "
        + "      TO_CHAR(AE.ALERT_EVENT_END_DATE, 'FMHHFM:MIAM') ) as endTime, "
        + "AE.ALERT_EVENT_START_TIME_TYPE as startTimeType, "
        + "AE.ALERT_EVENT_END_TIME_TYPE as endTimeType, "
        + "AE.ALERT_EVENT_UPDATED_DATE as updatedDate, "
        + "TO_CHAR(AE.ALERT_EVENT_UPDATED_DATE, 'FMHHFM:MIAM') as updatedTime, "
        + "TO_CLOB(AE.ALERT_EVENT_INFO) as alertEventInfo "
        + "FROM ALERT_EVENTS AE "
        + "WHERE AE.ALERT_TYPE_ID = 3 "
        + "AND AE.ALERT_EVENT_EFF_END_DATE >= sysdate "
        + "AND AE.ALERT_EVENT_EFF_START_DATE <= sysdate "
        + "ORDER BY AE.ALERT_EVENT_START_DATE DESC";
		
		if (LOG.isDebugEnabled()) {
		  LOG.debug("get data for Station/Park-n-Ride Alert");
		  LOG.debug("SQL: " + sql);
		}
		
		final PreparedStatement statement = conn
				.prepareStatement(sql);

		try
		{
		
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				AlertDetour spnrAlert = new AlertDetour();
				spnrAlert.setAlertCatDetail(rs.getString("alertCatDetail"));
				spnrAlert.setAlertCatID(rs.getInt("alertCatID"));
				spnrAlert.setStartDate(rs.getString("startDate"));
				spnrAlert.setStartTime(rs.getString("startTime"));
				spnrAlert.setEndDate(rs.getString("endDate"));
				spnrAlert.setEndTime(rs.getString("endTime"));
				spnrAlert.setStartTimeType(rs.getInt("startTimeType"));
				spnrAlert.setEndTimeType(rs.getInt("endTimeType"));
				spnrAlert.setUpdatedDate(rs.getDate("updatedDate"));
				spnrAlert.setUpdatedTime(rs.getString("updatedTime"));
				//retrieve content for CLOB field 
				spnrAlert.setAlertEventInfo(getClobContent(rs.getClob("alertEventInfo")));
				result.add(spnrAlert);
	
			}
			rs.close();
			statement.close();
			conn.close();			
		}
		catch(Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
			//e.printStackTrace();
		}
		finally
		{
			statement.close();
			conn.close();
		}		
		return result;
	}
	
	/**
	 * Retrieves data for all driver & detour/rider alerts combined with only routes affected 
	 */
	public ArrayList<AlertDetour> fetchDriverDetourAlerts() throws SQLException, Exception
	{
		ArrayList<AlertDetour> result = new ArrayList<AlertDetour>();

		final Connection conn = getDataSource().getConnection();
		
		String sql = "SELECT AE.ALERT_EVENT_ID as alertEventID, "
        + "AER.ROUTE_ID as routeID, "
        + "AER.ALERT_EVENT_ROUTES_ID as alertEventRouteID, "
        + "AER.ROUTE_TYPE_NAME as routeType, "
        + "AE.ALERT_TYPE_ID as alertTypeID, "
        + "TO_CLOB(AE.ALERT_EVENT_INFO) as alertEventInfo, "
        + "'' as alertEventInfoRemaining, "
        + "AE.ALERT_EVENT_GENERAL_DESC as generalDesc, "
        + "TO_CHAR(AE.ALERT_CATEGORY_DETAIL) as alertCatDetail, "
        + "AE.ALERT_CATEGORY_ID alertCatID, "
        + "TO_CLOB(AE.ALERT_EVENT_OPERATOR_INFO) as alertEventOpInfo, "
        + "'' as alertEventOpInfoRemaining, "
        + "AE.ALERT_EVENT_ROUTE_LN_AFFECTED as routeLineAff, "
        + "TO_CHAR(AE.ALERT_EVENT_START_DATE, 'FMMonth DD, YYYY') as startDate, "
        + "DECODE( TO_CHAR(AE.ALERT_EVENT_START_DATE, 'HH:MI:SSAM'), '12:00:00AM', '', "
        + "      TO_CHAR(AE.ALERT_EVENT_START_DATE, 'FMHHFM:MIAM') ) as startTime, "
        + "TO_CHAR(AE.ALERT_EVENT_END_DATE, 'FMMonth DD, YYYY') as endDate, "
        + "DECODE( TO_CHAR(AE.ALERT_EVENT_END_DATE, 'HH:MI:SSAM'), '12:00:00AM', '', "
        + "      TO_CHAR(AE.ALERT_EVENT_END_DATE, 'FMHHFM:MIAM') ) as endTime, "
        + "AE.ALERT_EVENT_START_TIME_TYPE as startTimeType, "
        + "AE.ALERT_EVENT_END_TIME_TYPE as endTimeType, "
        + "AE.ALERT_EVENT_UPDATED_DATE as updatedDate, "
        + "TO_CHAR(AE.ALERT_EVENT_UPDATED_DATE, 'FMHHFM:MIAM') as updatedTime "
        + "FROM ALERT_EVENT_ROUTES AER, ALERT_EVENTS AE "
        + "WHERE AE.ALERT_EVENT_ID = AER.ALERT_EVENT_ID "
        + "AND AE.ALERT_TYPE_ID IN (1,2) "
        + "AND AE.ALERT_EVENT_ID IN ( "
        + "          SELECT AER.ALERT_EVENT_ID "
        + "          FROM ALERT_EVENT_ROUTES AER, ALERT_EVENTS AE "
        + "          WHERE  AE.ALERT_EVENT_ID = AER.ALERT_EVENT_ID "
        + "          AND AE.ALERT_TYPE_ID = 2 "
        + "          AND ( AE.ALERT_EVENT_EFF_END_DATE >= sysdate OR ALERT_EVENT_EFF_END_DATE IS NULL ) "
        + "          AND AE.ALERT_EVENT_EFF_START_DATE <= sysdate "
        + "   UNION "
        + "         SELECT AER.ALERT_EVENT_ID "
        + "         FROM ALERT_EVENT_ROUTES AER, ALERT_EVENTS AE "
        + "         WHERE AE.ALERT_EVENT_ID = AER.ALERT_EVENT_ID "
        + "     AND AE.ALERT_TYPE_ID = 1 "
        + "         AND AE.ALERT_EVENT_EFF_END_DATE >= sysdate "
        + "         AND AE.ALERT_EVENT_EFF_START_DATE <= sysdate "
        + "     AND AE.ALERT_EVENT_DISPLAY_FLAG = 1 "
        + ") "
        + "AND ( AE.ALERT_EVENT_EFF_END_DATE >= sysdate OR ALERT_EVENT_EFF_END_DATE IS NULL ) "
        + "AND AE.ALERT_EVENT_EFF_START_DATE <= sysdate "
        + "ORDER BY AER.ROUTE_SEQUENCE, AER.ROUTE_ID";
		
		if (LOG.isDebugEnabled()) {
		  LOG.debug("get data for all driver & detour/rider alerts combined with only routes affected");
		  LOG.debug("SQL: " + sql);
		}
		
		final PreparedStatement statement = conn
				.prepareStatement(sql);

		try
		{
		
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				AlertDetour drDtAlert = new AlertDetour();
				drDtAlert.setAlertEventID(rs.getInt("alertEventID"));
				drDtAlert.setRouteID(rs.getString("routeID"));
				drDtAlert.setAlertEventRouteID(rs.getInt("alertEventRouteID"));
				drDtAlert.setRouteType(rs.getString("routeType"));
				drDtAlert.setAlertTypeID(rs.getInt("alertTypeID"));
				drDtAlert.setGeneralDesc(rs.getString("generalDesc"));
				drDtAlert.setAlertCatDetail(rs.getString("alertCatDetail"));
				drDtAlert.setAlertCatID(rs.getInt("alertCatID"));
				drDtAlert.setStartDate(rs.getString("startDate"));
				drDtAlert.setStartTime(rs.getString("startTime"));
				drDtAlert.setEndDate(rs.getString("endDate"));
				drDtAlert.setEndTime(rs.getString("endTime"));
				drDtAlert.setStartTimeType(rs.getInt("startTimeType"));
				drDtAlert.setEndTimeType(rs.getInt("endTimeType"));
				drDtAlert.setUpdatedDate(rs.getDate("updatedDate"));
				drDtAlert.setUpdatedTime(rs.getString("updatedTime"));
				drDtAlert.setRouteLineAff(rs.getString("routeLineAff"));
				drDtAlert.setAlertEventInfoRemaining(rs.getString("alertEventInfoRemaining"));
				drDtAlert.setAlertEventOpInfoRemaining(rs.getString("alertEventOpInfoRemaining"));
				//retrieve content for CLOB field
				drDtAlert.setAlertEventInfo(getClobContent(rs.getClob("alertEventInfo")));
				drDtAlert.setAlertEventOpInfo(getClobContent(rs.getClob("alertEventOpInfo")));
				result.add(drDtAlert);
	
			}
			rs.close();
			statement.close();
			conn.close();			
		}
		catch(Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
			//e.printStackTrace();
		}
		finally
		{
			statement.close();
			conn.close();
		}		
		return result;
	}
	
	/**
	 * Retrieves direction details of each Route/Line Affected 
	 */
	public ArrayList<AlertRouteDirectionDTO> fetchRouteLineDirections(int alertDetourRouteId) throws SQLException, Exception
	{
		ArrayList<AlertRouteDirectionDTO> result = new ArrayList<AlertRouteDirectionDTO>();

		final Connection conn = getDataSource().getConnection();
		
		String sql = "SELECT DECODE( AERD.DIRECTION_NAME, 'N-Bound', 'Northbound', "
        + "       'S-Bound', 'Southbound', "
        + "       'E-Bound', 'Eastbound', "
        + "       'W-Bound', 'Westbound', "
        + "       AERD.DIRECTION_NAME ) as directionName, "
        + "TO_CLOB(AERD.DIRECTION_ALERT) as directionDetail "
        + "FROM ALERT_EVENT_ROUTES_DIRECTION AERD "
        + "WHERE AERD.ALERT_EVENT_ROUTES_ID = ? "
        + "AND TO_CLOB(AERD.DIRECTION_ALERT) IS NOT NULL "
        + "ORDER BY AERD.DIRECTION_NAME";
		
		if (LOG.isDebugEnabled()) {
		  LOG.debug("get direction details of each Route/Line Affected");
		  LOG.debug("SQL: " + sql + "   Values... alertDetourRouteId:" + alertDetourRouteId);
		}
		
		final PreparedStatement statement = conn
				.prepareStatement(sql);

		try
		{
		
			statement.setInt(1, alertDetourRouteId);
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				AlertRouteDirectionDTO dir = new AlertRouteDirectionDTO();
				dir.setDirectionName(rs.getString("directionName"));
				//retrieve content for CLOB field 
				dir.setDirectionDetail(getClobContent(rs.getClob("directionDetail")));
				result.add(dir);
	
			}
			rs.close();
			statement.close();
			conn.close();			
		}
		catch(Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
			//e.printStackTrace();
		}
		finally
		{
			statement.close();
			conn.close();
		}		
		return result;
	}
	
	/**
	 * Retrieves all Other routes/lines affected for the selected Alerts/Detours which also excludes the route being displayed
	 */
	public ArrayList<AlertOtherRouteLineAffDTO> fetchOtherRouteLineAff(int alertEventID, String routeID) throws SQLException, Exception
	{
		ArrayList<AlertOtherRouteLineAffDTO> result = new ArrayList<AlertOtherRouteLineAffDTO>();

		final Connection conn = getDataSource().getConnection();
		
		String sql = "SELECT AER.ROUTE_ID as routeId "
        + "FROM ALERT_EVENT_ROUTES AER "
        + "WHERE AER.ALERT_EVENT_ID = ? "
        + "AND AER.ROUTE_ID <> ? "
        + "ORDER BY AER.ROUTE_SEQUENCE ";
		
		if (LOG.isDebugEnabled()) {
		  LOG.debug("get all Other routes/lines affected for the selected Alerts/Detours");
		  LOG.debug("SQL: " + sql + "    Values...  alertEventID:" + alertEventID + ", routeID:" + routeID);
		}
		
		final PreparedStatement statement = conn
				.prepareStatement(sql);

		try
		{
		
			statement.setInt(1, alertEventID);
			statement.setString(2, routeID);
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				AlertOtherRouteLineAffDTO rtLnAff = new AlertOtherRouteLineAffDTO();
				rtLnAff.setOtherRouteLineAff(rs.getString("routeId"));
				result.add(rtLnAff);
	
			}
			rs.close();
			statement.close();
			conn.close();			
		}
		catch(Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
			//e.printStackTrace();
		}
		finally
		{
			statement.close();
			conn.close();
		}		
		return result;
	}
	
	public String getClobContent(Clob clobContent) {
		//retrieve content for CLOB field 
		StringBuilder sb = new StringBuilder();
		try {
			if(clobContent != null) {
				java.sql.Clob clobData=clobContent;
				java.io.Reader reader = clobData.getCharacterStream();
				int nchars = 0; // Number of characters read
				char[] buffer = new char[10]; // Buffer holding characters being transferred

				while( (nchars = reader.read(buffer)) != -1 ) // Read from Clob
				sb.append(buffer, 0, nchars); // Write to StringBuffer
			}
	    } catch (SQLException e) {
	        // handle this exception
	    	//e.printStackTrace();
	    	LOG.error(StackTraceUtil.getStackTrace(e));
	    } catch (IOException e) {
	        // handle this exception
	    	//e.printStackTrace();
	    	LOG.error(StackTraceUtil.getStackTrace(e));
	    }
		return sb.toString();
	}
}
