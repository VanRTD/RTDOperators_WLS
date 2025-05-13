/**
 * 
 */
package com.rtd.operator.web.secure;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.utils.StringUtils;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 * @author Van Tran
 * 
 */

public class FetchPageController
{
	private static final String CLASS_NAME = FetchPageController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	public FetchPageController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return return a ModelAndView where the view is the argument passed in
	 * @throws ServletException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, Exception
	{
		/* JJH - this solves the problem of somehow a landingPage parameter not getting passed in
		 * and the user seeing the 404 error page and getting redirected.  Instead, we send the user
		 * to the home page, and if they aren't logged-in, they will instead see the login screen */
		LOG.info("fetchLandingPage" + request.getParameter("landingPage"));	
		return new ModelAndView(StringUtils.isNullOrEmpty(request.getParameter("landingPage")) ? "home" : 
			request.getParameter("landingPage"));
	}

}
