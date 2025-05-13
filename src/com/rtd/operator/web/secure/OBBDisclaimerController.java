/**
 * 
 */
package com.rtd.operator.web.secure;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.web.BaseFormController;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Van Tran
 * 
 * 
 */
@Controller
public class OBBDisclaimerController extends BaseFormController
{
	private static final String CLASS_NAME = OBBDisclaimerController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	public OBBDisclaimerController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * 
	 */
	@RequestMapping("/secure/getOBBDisclaimer.do")
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{

		LOG.info("Returning OBBDisclaimer view");

		return new ModelAndView("obbDisclaimer");

	}
}
