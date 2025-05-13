/**
 * 
 */
package com.rtd.operator.web.secure;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Justin Hancock
 *
 */
public class LightRailBulletinsHomeController
{

	/**
	 * 
	 */
	public LightRailBulletinsHomeController()
	{
		super();
	}
	
	/**
	 * @param request
	 * @param response
	 * @return the lightRailBulletinHome screen on a GET request
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView("lightRailBulletinHome");		
		return mav;
	}

}
