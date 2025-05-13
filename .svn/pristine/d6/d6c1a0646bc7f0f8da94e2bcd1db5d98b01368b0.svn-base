package com.rtd.operator.web.secure;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.dao.DriverAlertsDAO;
import com.rtd.operator.model.DriverAlert;
import com.rtd.operator.web.BaseFormController;
import com.rtd.utils.StackTraceUtil;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

/**
 * @author Justin Hancock
 * @author Van Tran
 * 
 */
public class DriverAlertsController extends BaseFormController
{
	// set up logging 
	private static final String CLASS_NAME = DriverAlertsController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private DriverAlertsDAO driverAlertsDAO;

	public DriverAlertsController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return returns the driverAlerts screen on GET request
	 * @throws ServletException
	 * @throws IOException
	 */
	/*
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView("driverAlerts");
		mav.addObject("dayOfWeek", getDayOfWeek());	
		
		try
		{
			// get the data.
			LOG.info("get the driver alerts data from the DAO");
			List<DriverAlert> driverAlertsList = driverAlertsDAO.fetchDriverAlerts();
			mav.addObject("driverAlertsList", driverAlertsList);

		} catch (Exception e) {
			LOG.error(StackTraceUtil.getStackTrace(e));
		}

		return mav;

	}
  */
	
	/**
	 * @return return the driverAlertsDAO
	 */
	public DriverAlertsDAO getDriverAlertsDAO()
	{
		return this.driverAlertsDAO;
	}
	
	/**
	 * @param aDAO
	 */
	public void setDriverAlertsDAO(DriverAlertsDAO aDAO)
	{
		this.driverAlertsDAO = aDAO;
	}

}
