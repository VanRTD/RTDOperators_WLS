/**
 * 
 */
package com.rtd.operator.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.rtd.operator.model.TransportationBulletin;
import com.rtd.utils.StackTraceUtil;

/**
 * @author Justin Hancock
 * @author Van Tran
 * 
 */
public class TransportationBulletinDAO extends AbstractDAO
{

	private static final Logger LOG = LogManager.getLogger(TransportationBulletinDAO.class.getName());
	/**
	 * 
	 */
	public TransportationBulletinDAO()
	{
		super();
	}

	/**
	 * get data for Bulletins Number Search Result
	 */
	public List<TransportationBulletin> fetchTransportationBulletins(
			String bulletinNumber, String bulletinType) throws Exception
	{
		List<TransportationBulletin> result = new ArrayList<TransportationBulletin>();

		final Connection conn = getDataSource().getConnection();
		/**
		 * The query below is executed with a condition to exclude any records
		 * with "NULL" in the search string
		 */
		final PreparedStatement statement = conn
				.prepareStatement("SELECT BULLETIN_NUMBER as bulletinNumber, "
						+ "BULLETIN_DT as bulletinDate, "
						+ "SUBSTR(BULLETIN_NUMBER,4,2) as trYear, "
						+ "BULLETIN_FOR as bulletinFor, "
						+ "SUBJECT as subject, "
						+ "BULLETIN_FILENAME as fileName "
						+ "FROM TRANSPORTATION_BULLETINS "
						+ "WHERE BULLETIN_NUMBER LIKE ? "
						+ "AND BULLETIN_NUMBER NOT LIKE 'NULL' "
						+ "AND TYPE = ? " + "ORDER BY BULLETIN_NUMBER_SEQUENCE");
		
		try
		{
			if (LOG.isDebugEnabled()) {
				LOG.debug("fetchTransportationBulletins... bulletinNumber:" + bulletinNumber + " bulletinType:" + bulletinType);
			}
			statement.setString(1, "%" + bulletinNumber + "%");
			statement.setString(2, bulletinType);
	
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				result.add(TransportationBulletin.newInstance(
				rs.getTimestamp("bulletinDate"), 
				rs.getString("fileName"), 
				rs.getString("bulletinFor"), 
				rs.getString("bulletinNumber"),
				rs.getString("subject"),
				rs.getString("trYear")
				));	
			}
			
			rs.close();
			statement.close();
			conn.close();			
		}
		
		catch(Exception e)
		{
			//e.printStackTrace();
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
	 * get data for Bulletins Search Phrase Result
	 */
	/**
	 * The query below is executed with a condition to exclude any records with
	 * "NULL" in the search string
	 */
	public List<TransportationBulletin> fetchBulletinWordSearchResults(
			String searchWords, String bulletinType) throws Exception
	{
		List<TransportationBulletin> result = new ArrayList<TransportationBulletin>();

		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("SELECT BULLETIN_NUMBER as bulletinNumber, "
						+ "BULLETIN_DT as bulletinDate, "
						+ "SUBSTR(BULLETIN_NUMBER,4,2) as trYear, "
						+ "BULLETIN_FOR as bulletinFor, "
						+ "SUBJECT as subject, "
						+ "BULLETIN_FILENAME as fileName "
						+ "FROM TRANSPORTATION_BULLETINS "
						+ "WHERE SUBJECT LIKE ? "
						+ "AND SUBJECT NOT LIKE 'NULL' " + "AND TYPE = ? "
						+ "ORDER BY BULLETIN_NUMBER_SEQUENCE");

		try
		{
			if (LOG.isDebugEnabled()) {
				LOG.debug("fetchBulletinWordSearchResults... searchWords:" + searchWords + " bulletinType:" + bulletinType);
			}
			statement.setString(1, "%" + searchWords + "%");
			statement.setString(2, bulletinType);
	
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				result.add(TransportationBulletin.newInstance(
				rs.getTimestamp("bulletinDate"), 
				rs.getString("fileName"), 
				rs.getString("bulletinFor"), 
				rs.getString("bulletinNumber"),
				rs.getString("subject"),
				rs.getString("trYear")
				));	
			}
			
			rs.close();
			statement.close();
			conn.close();
		}
		catch (Exception e)
		{
			//e.printStackTrace();
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
	 * get This Year Bulletins data
	 */
	public List<TransportationBulletin> fetchThisYearBulletins(String thisYear,
			String bulletinType) throws Exception
	{
		List<TransportationBulletin> result = new ArrayList<TransportationBulletin>();

		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("SELECT BULLETIN_NUMBER as bulletinNumber, "
						+ "BULLETIN_DT as bulletinDate, "
						+ "SUBSTR(BULLETIN_NUMBER,4,2) as trYear, "
						+ "BULLETIN_FOR as bulletinFor, "
						+ "SUBJECT as subject, "
						+ "BULLETIN_FILENAME as fileName "
						+ "FROM TRANSPORTATION_BULLETINS "
						+ "WHERE SUBSTR(BULLETIN_NUMBER,4,2) = ? " + "AND TYPE = ? "
						+ "ORDER BY BULLETIN_DT DESC, BULLETIN_NUMBER_SEQUENCE");

		try
		{
			if (LOG.isDebugEnabled()) {
				LOG.debug("fetchThisYearBulletins... thisYear:" + thisYear + " bulletinType:" + bulletinType);
			}
			statement.setString(1, thisYear);
			statement.setString(2, bulletinType);
	
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				result.add(TransportationBulletin.newInstance(
				rs.getTimestamp("bulletinDate"), 
				rs.getString("fileName"), 
				rs.getString("bulletinFor"), 
				rs.getString("bulletinNumber"),
				rs.getString("subject"),
				rs.getString("trYear")
				));
	
			}
			
			rs.close();
			statement.close();
			conn.close();
		}
		catch (Exception e)
		{
			//e.printStackTrace();
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
	 * get Last Year Bulletins data
	 */
	public List<TransportationBulletin> fetchLastYearBulletins(String lastYear,
			String bulletinType) throws Exception
	{
		List<TransportationBulletin> result = new ArrayList<TransportationBulletin>();

		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("SELECT BULLETIN_NUMBER as bulletinNumber, "
						+ "BULLETIN_DT as bulletinDate, "
						+ "SUBSTR(BULLETIN_NUMBER,4,2) as trYear, "
						+ "BULLETIN_FOR as bulletinFor, "
						+ "SUBJECT as subject, "
						+ "BULLETIN_FILENAME as fileName "
						+ "FROM TRANSPORTATION_BULLETINS "
						+ "WHERE SUBSTR(BULLETIN_NUMBER,4,2) = ? " + "AND TYPE = ? "
						+ "ORDER BY BULLETIN_DT DESC, BULLETIN_NUMBER_SEQUENCE");

		try
		{
			if (LOG.isDebugEnabled()) {
				LOG.debug("fetchLastYearBulletins... lastYear:" + lastYear + " bulletinType:" + bulletinType);
			}
			statement.setString(1, lastYear);
			statement.setString(2, bulletinType);
	
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				result.add(TransportationBulletin.newInstance(
				rs.getTimestamp("bulletinDate"), 
				rs.getString("fileName"), 
				rs.getString("bulletinFor"), 
				rs.getString("bulletinNumber"),
				rs.getString("subject"),
				rs.getString("trYear")
				));
	
			}
			
			rs.close();
			statement.close();
			conn.close();
		}
		catch (Exception e)
		{
			//e.printStackTrace();
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
	 * get all other bulletins that are not last year nor this year
	 */
	public List<TransportationBulletin> fetchOtherBulletins(String thisYear, String lastYear, String bulletinType) throws Exception
	{
		List<TransportationBulletin> result = new ArrayList<TransportationBulletin>();

		final Connection conn = getDataSource().getConnection();
		final PreparedStatement statement = conn
				.prepareStatement("SELECT BULLETIN_NUMBER as bulletinNumber, "
						+ "BULLETIN_DT as bulletinDate, "
						+ "SUBSTR(BULLETIN_NUMBER,4,2) as trYear, "
						+ "BULLETIN_FOR as bulletinFor, "
						+ "SUBJECT as subject, "
						+ "BULLETIN_FILENAME as fileName "
						+ "FROM TRANSPORTATION_BULLETINS "
						+ "WHERE SUBSTR(BULLETIN_NUMBER,4,2) NOT IN (?, ?) " + "AND TYPE = ? "
						+ "ORDER BY trYear DESC, BULLETIN_DT DESC, BULLETIN_NUMBER_SEQUENCE");

		try
		{
			if (LOG.isDebugEnabled()) {
				LOG.debug("fetchOtherBulletins... thisYear:" + thisYear + " lastYear:" + lastYear + " bulletinType:" + bulletinType);
			}
			statement.setString(1, thisYear);
			statement.setString(2, lastYear);
			statement.setString(3, bulletinType);
	
			final ResultSet rs = statement.executeQuery();
	
			while (rs.next())
			{
				result.add(TransportationBulletin.newInstance(
				rs.getTimestamp("bulletinDate"), 
				rs.getString("fileName"), 
				rs.getString("bulletinFor"), 
				rs.getString("bulletinNumber"),
				rs.getString("subject"),
				rs.getString("trYear")
				));
	
			}
			
			rs.close();
			statement.close();
			conn.close();
		}
		catch (Exception e)
		{
			//e.printStackTrace();
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		
		finally
		{			
			statement.close();
			conn.close();			
		}
		return result;
	}

}
