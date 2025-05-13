package com.rtd.operator.web.secure;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.dao.AlertDetourDAO;
import com.rtd.operator.model.AlertDetour;
import com.rtd.operator.model.AlertRouteDirectionDTO;
import com.rtd.operator.model.AlertOtherRouteLineAffDTO;
import com.rtd.operator.web.BaseFormController;
import com.rtd.utils.StackTraceUtil;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

/**
 * @author Van Tran
 * 
 */
public class AlertDetoursController extends BaseFormController
{
	// set up logging 
	private static final String CLASS_NAME = AlertDetoursController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private AlertDetourDAO alertDetourDAO;

	
	public AlertDetoursController()
	{
		super();
	}
	
	/**
	 * @param request
	 * @param response
	 * @return returns the driver alerts, station/pnR alerts, and detours screen on GET request
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		
		ModelAndView mav = new ModelAndView("alertDetourHome");
		mav.addObject("dayOfWeek", getDayOfWeek());	
		
		try
		{		
			LOG.info("get the Station/PNR, Detour, Rider and Driver Alerts data from the DAO");
			ArrayList<AlertDetour> driverAlertData = alertDetourDAO.fetchDriverAlerts();
			mav.addObject("driverAlertItems", driverAlertData);
			
			ArrayList<AlertDetour> stationPNRAlertData = alertDetourDAO.fetchStationPNRAlerts();
			mav.addObject("stationPNRAlertItems", stationPNRAlertData);
			
			ArrayList<AlertDetour> driverDetourRouteData = alertDetourDAO.fetchDriverDetourAlerts();
			for (AlertDetour dto : driverDetourRouteData) {
				
				ArrayList<AlertRouteDirectionDTO> adRtLnDirData = alertDetourDAO.fetchRouteLineDirections(dto.getAlertEventRouteID());
				dto.setDirectionDTOs(adRtLnDirData);
				
				ArrayList<AlertOtherRouteLineAffDTO> adOtherRtLnAffData = alertDetourDAO.fetchOtherRouteLineAff(dto.getAlertEventID(), dto.getRouteID());
				dto.setOtherRouteLineAffDTOs(adOtherRtLnAffData);

			}
			mav.addObject("driverDetourRouteItems", driverDetourRouteData);

		} catch (Exception e) {
			LOG.error(StackTraceUtil.getStackTrace(e));	
		}
		return mav;

	}

	/**
	 * @return return the alertDetourDAO
	 */
	public AlertDetourDAO getAlertDetourDAO()
	{
		return this.alertDetourDAO;
	}
	
	/**
	 * @param aDAO
	 */
	public void setAlertDetourDAO(AlertDetourDAO aDAO)
	{
		this.alertDetourDAO = aDAO;
	}

	
}
