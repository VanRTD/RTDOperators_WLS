/**
 * 
 */
package com.rtd.operator.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Justin Hancock
 * 
 */
@Controller
public class EmployeeOrContractorController extends BaseFormController
{

	/**
	 * 
	 */
	public EmployeeOrContractorController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return ModelAndView on GET request
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response)
	{
		ModelAndView result = new ModelAndView("employmentTypeSelection");
		return result;
	}

}
