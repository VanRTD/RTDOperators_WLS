package com.rtd.operator.web.secure.extraboard;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//import com.rtd.operator.dao.DayTypeDAO;
import com.rtd.operator.dao.extraboard.ExtraboardDetailDAO;
import com.rtd.operator.model.extraboard.Blocks;
import com.rtd.utils.StackTraceUtil;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


public class ExtraboardDetailController
{
	// set up logging
	private static final String CLASS_NAME = ExtraboardDetailController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	// set the DAOs as vars
	//private DayTypeDAO dayTypeDAO;
	private ExtraboardDetailDAO extraboardDetailDAO;

	public ExtraboardDetailController()
	{
		super();
	}

	/**
	 * When from the extraboard.jsp a user chooses to click on a run number,
	 * this controller and method are executed.
	 * 
	 * In the request will be two url parameters validDate: the date that the
	 * extraboard information the operator viewed was valid for run: the job /
	 * run number without the service or day type appended.
	 * 
	 * valid date is passed to the DayTypeDAO.getDayType method where a query is
	 * run to provide the daytype value. This value will be appended to the run
	 * number
	 * 
	 * the appended run number is then sent into the
	 * ExtraboardDetailDAO.getExtraboardDetail method. this method uses the
	 * complete (appended) run number to provide more detailed information to
	 * the driver to help them in locating their traincard.
	 * 
	 * @param request
	 * @param response
	 * @return mav
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 * @throws ParseException
	 */

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException,
			SQLException, ParseException
	{
		ModelAndView mav = new ModelAndView("extraboardDetail");
		try
		{
			LOG.info("run the methods and processes to get the detailed extraboard data");
			/* NOT NEEDED! Run number data from db now contains run # and day type.
			 * Date strToDt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.S")
					.parse(request.getParameter("validDate"));
			// need to get the valid date to append to the run number so we'll
			// have a complete run_id for the query to use
			String appendVar = dayTypeDAO.getDayType(strToDt);
			String runId = runNbr + appendVar;*/
			String runNbr = request.getParameter("run");
			String piece = request.getParameter("piece");
			Date validDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("validDate"));
			List<Blocks> blocks = extraboardDetailDAO
					.getExtraboardDetail(runNbr, piece, validDate);
			LOG.info("The processes have run now add the info to the mav");
			//mav.addObject("runNbr", runNbr);
			mav.addObject("blocks", blocks);
		}
		catch (Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}
		return mav;
	}

	/*public DayTypeDAO getDayTypeDAO()
	{
		return dayTypeDAO;
	}

	public void setDayTypeDAO(DayTypeDAO dayTypeDAO)
	{
		this.dayTypeDAO = dayTypeDAO;
	}*/

	public ExtraboardDetailDAO getExtraboardDetailDAO()
	{
		return extraboardDetailDAO;
	}

	public void setExtraboardDetailDAO(ExtraboardDetailDAO extraboardDetailDAO)
	{
		this.extraboardDetailDAO = extraboardDetailDAO;
	}
}
