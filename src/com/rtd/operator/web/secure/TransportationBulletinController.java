/**
 * 
 */
package com.rtd.operator.web.secure;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.dao.TransportationBulletinDAO;
import com.rtd.operator.model.TransportationBulletin;
import com.rtd.operator.model.TransportationBulletinSearchObject;
import com.rtd.operator.web.BaseFormController;
import com.rtd.utils.StackTraceUtil;


/**
 * @author Justin Hancock
 * @author Van Tran
 * 
 */
public class TransportationBulletinController extends BaseFormController
{
	private static final String CLASS_NAME = TransportationBulletinController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private TransportationBulletinDAO transportationBulletinDAO;

	/**
	 * 
	 */
	public TransportationBulletinController()
	{
		super();
	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView(getLandingPageDestination(request, false));
		mav.addObject("command", new TransportationBulletinSearchObject());
		mav.addObject("thisYear", getThisYearFull());
		mav.addObject("lastYear", getLastYearFull());
		/**
		 * set type param as the url parameter
		 */
		final String typeParam = request.getParameter("type");
		
		if (("byDate").equalsIgnoreCase(request.getParameter("sortBy")))
		{
			try
			{
				List<TransportationBulletin> thisYearList = transportationBulletinDAO
						.fetchThisYearBulletins(getThisYear(), (typeParam));
				mav.addObject("thisYearbulletinsList", thisYearList);
				
				List<TransportationBulletin> lastYearList = transportationBulletinDAO
				.fetchLastYearBulletins(getLastYear(), (typeParam));
				mav.addObject("lastYearbulletinsList", lastYearList);
			}

			catch (Exception e)
			{
				LOG.error(StackTraceUtil.getStackTrace(e));
			}	
		}
		else if (("otherBulletin").equalsIgnoreCase(request.getParameter("sortBy"))) {
			try
			{
				List<TransportationBulletin> otherBulletinList = transportationBulletinDAO
				.fetchOtherBulletins(getThisYear(), getLastYear(), (typeParam));
				mav.addObject("otherBulletinsList", otherBulletinList);
			}
			
			catch (Exception e)
			{
				LOG.error(StackTraceUtil.getStackTrace(e));
			}
		}

		return mav;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView onSubmit(
			HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("command") TransportationBulletinSearchObject searchCriteria,
			Errors errors) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView(getLandingPageDestination(request, true));
		/**
		 * set type param as the url parameter
		 */
		final String typeParam = request.getParameter("type");

		try
		{
			List<TransportationBulletin> result = transportationBulletinDAO
					.fetchTransportationBulletins(
							searchCriteria.getBulletinNumber(),(typeParam));
			mav.addObject("bulletinsList", result);
			
			List<TransportationBulletin> searchWordResult = transportationBulletinDAO
			.fetchBulletinWordSearchResults(
					searchCriteria.getSearchWords(),(typeParam));
	mav.addObject("searchWordList", searchWordResult);
		}

		catch (Exception e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
		}

		return mav;
	}

	public TransportationBulletinDAO getTransportationBulletinDAO()
	{
		return transportationBulletinDAO;
	}

	public void setTransportationBulletinDAO(TransportationBulletinDAO aDAO)
	{
		this.transportationBulletinDAO = aDAO;
	}

	// HELPER

	private String getLandingPageDestination(HttpServletRequest request,
			boolean isSearchResults)
	{
		String result;
		if (isSearchResults)
		{
			
			if (("bus").equalsIgnoreCase(request.getParameter("type")))
			{
				result = "busBulletinSearchResults";
			}
			else if (("LR").equalsIgnoreCase(request.getParameter("type")))
			{
				result = "lightRailBulletinSearchResults";
			}
			else if (("FSC").equalsIgnoreCase(request.getParameter("type")))
			{
				result = "finalServiceChangesSearchResults";
			}
			else if (("DN").equalsIgnoreCase(request.getParameter("type")))
			{
				result = "divisionNewsSearchResults";
			}
			else if (("DMN").equalsIgnoreCase(request.getParameter("type")))
			{
				result = "dispatchMonthlyNewsSearchResults";
			}
			else
			{
				result = "busBulletinSearchResults";
			}

		}
		else
		{
			/**
			 * If url param sortBy is defined, set the landing page to go to the jsp page 
			 * for listing bulletins by date for current year and previous year
			 */
			if (("byDate").equalsIgnoreCase(request.getParameter("sortBy")) || ("otherBulletin").equalsIgnoreCase(request.getParameter("sortBy")))
			{
				
				if (("bus").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "busBulletinByDate";
				}
				else if (("LR").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "lightRailBulletinByDate";
				}
				else if (("FSC").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "finalServiceChangesByDate";
				}
				else if (("DN").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "divisionNewsByDate";
				}
				else if (("DMN").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "dispatchMonthlyNewsByDate";
				}
				else
				{
					result = "busBulletinByDate";
				}	
				
			}
			
			/**
			 * Else if url param sortBy is not defined, set the landing page to go 
			 * to the jsp page for bulletins search form
			 */
			else
			{
				
				if (("bus").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "busBulletinSearch";
				}
				else if (("LR").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "lightRailBulletinSearch";
				}
				else if (("FSC").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "finalServiceChangesSearch";
				}
				else if (("DN").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "divisionNewsSearch";
				}
				else if (("DMN").equalsIgnoreCase(request.getParameter("type")))
				{
					result = "dispatchMonthlyNewsSearch";
				}
				else
				{
					result = "busBulletinSearch";
				}
				
			}
		}

		return result;
	}

}
