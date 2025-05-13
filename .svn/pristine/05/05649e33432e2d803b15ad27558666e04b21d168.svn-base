package com.rtd.operator.dao.extraboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.rtd.operator.dao.AbstractDAO;
import com.rtd.operator.model.extraboard.Blocks;
import com.rtd.utils.StackTraceUtil;

public class ExtraboardDetailDAO extends AbstractDAO
{

	// set up logging
	private static final String CLASS_NAME = ExtraboardDetailDAO.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	public ExtraboardDetailDAO()
	{
		super();
	}

	/**
	 * getExtraBoardDetail takes the run number with the appended daytype to
	 * query blocks by using a subselect in the where clause. The subselect gets
	 * the block number from the runs table by using the runId that was passed
	 * into the method.
	 * 
	 * @param runId
	 * @return blocks
	 * @throws SQLException
	 */
	public List<Blocks> getExtraboardDetail(String runId, String piece, Date validDate) throws SQLException, Exception
	{

		List<Blocks> blocks = new ArrayList<Blocks>();
		final Connection con = getDataSource().getConnection();
		PreparedStatement stmt = null;
		
		long t = validDate.getTime();
		java.sql.Date dt = new java.sql.Date(t);
		
		try
		{
			
			LOG.info("get connction for ExtraboardDetail");
			
			if (("").equals(piece)) {
				// run the query when we have no pieces associated with the run
				stmt = con
				.prepareStatement("SELECT block_number, route_abbr, block_pullout, block_pullin, signup_time, box_nbr, first_route, last_route, run_piece_number, on_time, off_time, relief_location, run_number FROM extraboard_box_runs WHERE run_number = ? and RUN_PIECE_NUMBER = 1 and valid_date = ?");
				
				/*stmt = con
				.prepareStatement("SELECT block_id, route_id, on_time, off_time, decode(from_run_id,null,signup_time,null) signup_time, division_id, box_nbr, first_route, last_route FROM extraboard_box_runs_old WHERE run_id = ?");*/

				stmt.setString(1, runId);
				stmt.setDate(2, dt);
				
			} else {
				// we have a piece that is not null therefore add it as a query param
				stmt = con
				.prepareStatement("SELECT block_number, route_abbr, block_pullout, block_pullin, signup_time, box_nbr, first_route, last_route, run_piece_number, on_time, off_time, relief_location, run_number FROM extraboard_box_runs WHERE run_number = ? and RUN_PIECE_NUMBER = ? and valid_date = ?");
				
				/*stmt = con
					.prepareStatement("SELECT block_id, route_id, on_time, off_time, decode(from_run_id,null,signup_time,null) signup_time, division_id, box_nbr, first_route, last_route FROM extraboard_box_runs_old WHERE run_id = ? and run_pieces = ?");*/
	
				stmt.setString(1, runId);
				stmt.setString(2, piece);
				stmt.setDate(3, dt);
			}
	
			final ResultSet rs = stmt.executeQuery();
	
			while (rs.next())
			{
				blocks.add(Blocks.newInstance(rs.getString("block_number"), 
						rs.getString("route_abbr"), 
						rs.getString("block_pullout"), 
						rs.getString("block_pullin"), 
						rs.getString("signup_time"), 
						rs.getString("box_nbr"), 
						rs.getString("first_route"), 
						rs.getString("last_route"), 
						rs.getString("run_piece_number"), 
						rs.getString("on_time"), 
						rs.getString("off_time"), 
						rs.getString("relief_location"),
						rs.getString("run_number")));
			}
			rs.close();
			
		}
		catch (SQLException e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		
		finally 
		{
			stmt.close();
			con.close();
			LOG.info("close all statements");
		}
		
		return blocks;
	}

	
}
