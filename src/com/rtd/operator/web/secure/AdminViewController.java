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

import com.rtd.operator.web.BaseFormController;

/**
 * @author Justin Hancock
 * 
 */
public class AdminViewController extends BaseFormController
{

	/**
	 * 
	 */
	public AdminViewController()
	{
		super();
	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		return new ModelAndView("adminView");
	}

}
