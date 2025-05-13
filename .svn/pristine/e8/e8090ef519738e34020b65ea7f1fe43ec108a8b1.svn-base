/**
 * 
 */
package com.rtd.operator.web.secure;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.web.BaseFormController;

@Controller
public class TimeController extends BaseFormController
{

	public TimeController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return 
	 * 
	 */
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
	{
		return new ModelAndView(getSuccessView());
	}

}
