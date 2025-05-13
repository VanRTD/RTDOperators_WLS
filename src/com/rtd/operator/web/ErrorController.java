/**
 * 
 */
package com.rtd.operator.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 *
 */
public class ErrorController extends BaseFormController
{
	private static final String CLASS_NAME = ErrorController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	/**
	 * 
	 */
	public ErrorController()
	{
		super();
	}

	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(
			HttpServletRequest request,
			HttpServletResponse response)		
	{
		LOG.info(CLASS_NAME + "redirecting to error page");
		return new ModelAndView("loginForm");
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		request.removeAttribute("javax.servlet.error.exception");
		request.removeAttribute("javax.servlet.error.servlet_name");
		request.removeAttribute("javax.servlet.error.status_code");
		request.removeAttribute("javax.servlet.error.message");
		request.removeAttribute("javax.servlet.error.request_uri");
		
		// JJH - this sucks, but I don't know how else to guarantee that we don't
		// show a blank error screen from the web.xml error-codes on a null pointer
		// exception.  I know it won't get decorated, and it never shows anything in 
		// the errorPage, unlike a 404 error code which works like a champ.
		request.getSession().invalidate();
		response.sendRedirect("getLoginForm.do");
		
		return new ModelAndView("loginForm");
	}
	
}
