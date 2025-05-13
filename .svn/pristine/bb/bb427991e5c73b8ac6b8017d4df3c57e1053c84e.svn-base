package com.rtd.operator.web.secure;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.rtd.operator.dao.DetourDAO;
import com.rtd.operator.web.BaseFormController;


/**
 * @author Justin Hancock
 * @author Van Tran
 * 
 */
public class DetourController extends BaseFormController
{
	// set up logging 
	private static final String CLASS_NAME = DetourController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private DetourDAO detourDAO;

	public DetourController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return returns the detour screen on GET request
	 * @throws ServletException
	 * @throws IOException
	 */
	/*
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView("detourHome");
		mav.addObject("dayOfWeek", getDayOfWeek());	
		
		try
		{
			// get the data.
			LOG.info("get the detour data from the DAO");
			List<Detour> detourList = detourDAO.fetchDetours();
			mav.addObject("detourList", detourList);
			
			List<DetourRoute> detourRouteList = detourDAO.fetchDetourRoute();
			mav.addObject("detourRouteList", detourRouteList);

		} catch (Exception e) {
			LOG.error(StackTraceUtil.getStackTrace(e));	
		}

		return mav;

	}
	*/
	
	/**
	 * @return return the detourDAO
	 */
	public DetourDAO getDetourDAO()
	{
		return this.detourDAO;
	}
	
	/**
	 * @param aDAO
	 */
	public void setDetourDAO(DetourDAO aDAO)
	{
		this.detourDAO = aDAO;
	}

}
