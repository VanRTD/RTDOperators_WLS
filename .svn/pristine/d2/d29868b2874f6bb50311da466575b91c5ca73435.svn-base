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
 * @author Justin Hancock
 * 
 * 
 */
@Controller
public class IndexController extends BaseFormController
{
	private static final String CLASS_NAME = IndexController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	public IndexController()
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
	@RequestMapping("/secure/index.do")
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
	  // This is an interim fix to prevent users from directly accessing the 
	  // app by passing user and password arguments in the URL.
	  Boolean disclaimer = (Boolean) request.getSession().getAttribute("disclaimer");
    if (disclaimer == null || !disclaimer) {
      request.getSession().setAttribute("disclaimer", new Boolean(false));
      LOG.debug("Redirecting to /operator/j_spring_security_logout...");
      return new ModelAndView("redirect:/operator/j_spring_security_logout");
    }
    	return new ModelAndView("home");

	}
}
