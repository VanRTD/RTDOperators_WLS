package com.rtd.operator.dao.extraboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.rtd.operator.dao.AbstractDAO;
import com.rtd.operator.model.extraboard.Extraboard;
import com.rtd.utils.StackTraceUtil;

/**
 * 
 * @author Steve Black This DAO gets the extraboard information that is moved
 *         over from universe through datastage to the operator website
 *         database.
 * 
 *         It is used to let an operator know whether or not they have an
 *         assignment and also provides the information required to drill down
 *         and provide the operator with the information that they would need to
 *         locate the appropriate traincard.
 * 
 */

public class ExtraboardDAO extends AbstractDAO
{
	// set up logging
	private static final String CLASS_NAME = ExtraboardDAO.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	
	// constructor
	public ExtraboardDAO()
	{
		super();
	}

	/**
	 * Pass in the empId to the getExtraboardData method and it will query the
	 * extraboard table for job assignments. This data is updated on a regular
	 * basis and is refreshed via ETL. Once the query is complete the extrboard
	 * List is returned to the ExtraBoardListController.
	 * 
	 * @param empId
	 * @return result, a list of extraboard assignments (should only be one, but
	 *         perhaps with multiple runs)
	 * @throws SQLException
	 */
	public List<Extraboard> getExtraBoardData(String empId) throws SQLException, Exception
	{
		List<Extraboard> result = new ArrayList<Extraboard>();
		final Connection con = getDataSource().getConnection();
		PreparedStatement stmt = null;
		try
		{
			LOG.info("get extraboard info by employee id");
			stmt = con
					.prepareStatement("SELECT division, TO_CHAR(valid_date, 'YYYY-MM-DD') as valid_date, valid_date as vdDate, emp_id, emp_name, assignment, shift, run1_id, run1_pieces, run2_id, run2_pieces, run3_id, run3_pieces, run4_id, run4_pieces FROM extraboard WHERE emp_id = ? ORDER BY valid_date");
			stmt.setString(1, empId);
	
			final ResultSet rs = stmt.executeQuery();
	
			while (rs.next())
			{
				Extraboard eb = new Extraboard();
				eb.setDivision(rs.getString("division"));
				eb.setValidDate(rs.getString("valid_date"));
				eb.setEmpId(rs.getString("emp_id"));
				eb.setEmpName(rs.getString("emp_name"));
				eb.setAssignment(rs.getString("assignment"));
				eb.setShift(rs.getString("shift"));
				eb.setRun1Id(rs.getString("run1_id"));
				eb.setRun1Pieces(rs.getString("run1_pieces"));
				eb.setRun2Id(rs.getString("run2_id"));
				eb.setRun2Pieces(rs.getString("run2_pieces"));
				eb.setRun3Id(rs.getString("run3_id")); 
				eb.setRun3Pieces(rs.getString("run3_pieces"));
				eb.setRun4Id(rs.getString("run4_id"));
				eb.setRun4Pieces(rs.getString("run4_pieces"));
				eb.setVdDate(rs.getTimestamp("vdDate"));
				result.add(eb);
			}
			rs.close();
			LOG.info("close all statements and return the result");
		}
		catch (SQLException e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		
		finally
		{
			if (stmt != null) stmt.close();
			con.close();
		}
		
		return result;
	}

	public List<Extraboard> getAllExtraboardData() throws SQLException, Exception
	{
		List<Extraboard> allEbData = new ArrayList<Extraboard>();
		final Connection con = getDataSource().getConnection();
		PreparedStatement stmt = null;
		try
		{
			LOG.info("get all of the extraboard data");
			stmt = con
					.prepareStatement("SELECT division, TO_CHAR(valid_date, 'YYYY-MM-DD') as valid_date, valid_date as vdDate, emp_id, emp_name, assignment, shift, run1_id, run1_pieces, run2_id, run2_pieces, run3_id, run3_pieces, run4_id, run4_pieces FROM extraboard ORDER BY division, valid_date, emp_name");
			final ResultSet rs = stmt.executeQuery();
	
			while (rs.next())
			{
				Extraboard eb = new Extraboard();
				eb.setDivision(rs.getString("division"));
				eb.setValidDate(rs.getString("valid_date"));
				eb.setEmpId(rs.getString("emp_id"));
				eb.setEmpName(rs.getString("emp_name"));
				eb.setAssignment(rs.getString("assignment"));
				eb.setShift(rs.getString("shift"));
				eb.setRun1Id(rs.getString("run1_id"));
				eb.setRun1Pieces(rs.getString("run1_pieces"));
				eb.setRun2Id(rs.getString("run2_id"));
				eb.setRun2Pieces(rs.getString("run2_pieces"));
				eb.setRun3Id(rs.getString("run3_id")); 
				eb.setRun3Pieces(rs.getString("run3_pieces"));
				eb.setRun4Id(rs.getString("run4_id"));
				eb.setRun4Pieces(rs.getString("run4_pieces"));
				eb.setVdDate(rs.getTimestamp("vdDate"));
				allEbData.add(eb);
			}
			rs.close();
			LOG.info("close what was open, and lets return the value");
		}
		catch (SQLException e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		
		finally
		{
			if (stmt != null) stmt.close();
			con.close();
		}
		
		return allEbData;
	}

}
