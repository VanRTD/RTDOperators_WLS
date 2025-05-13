/**
 * 
 */
package com.rtd.operator.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.AuthenticationException;
import org.springframework.security.ui.AbstractProcessingFilter;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.model.UserLogin;
import com.rtd.operator.validation.LoginUserValidator;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 * 
 */
@Controller
@SessionAttributes("employeeAccountAccessBean")
public class LoginFormController extends BaseFormController
{
	protected static Logger LOG = LogManager.getLogger(LoginFormController.class.getName());

	/**
	 * CONSTRUCTING
	 */
	public LoginFormController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return ModelAndView on GET request
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{

    ModelAndView mav = new ModelAndView(getSuccessView());

		AuthenticationException authExcept = (AuthenticationException) request
				.getSession().getAttribute(
						AbstractProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY);

		if (authExcept != null)
		{
        mav.addObject("errorMessage", authExcept.getMessage());
      }

    // JJH: we want to invalidate the session here
    // so that we have nothing sticking around if
    // a user bailed on creating their account.
    // request.getSession().invalidate();
    return mav;

  }

	/**
	 * @param command
	 * @param result
	 * @return ModelAndView on POST method
	 */
	@RequestMapping(method = RequestMethod.POST)
	protected ModelAndView onSubmit(@ModelAttribute UserLogin command,
			Errors result)
	{
		ModelAndView mav = new ModelAndView();		
		new LoginUserValidator().validate(command, result);

		if (result.hasErrors())
		{
			mav.addObject("userLogin", command);
			mav.addObject("status", result);
			mav.setViewName(getFailureView());
			return mav;
		}

		mav.setViewName(getSuccessView());
		// at this point, we will want to enter the user in the session, but
		// only the user.
		return mav;
	}

}
