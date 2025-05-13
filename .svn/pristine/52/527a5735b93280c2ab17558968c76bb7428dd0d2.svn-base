/**
 * 
 */
package com.rtd.operator.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.dao.UserAccountDAO;
import com.rtd.operator.model.UserAccount;
import com.rtd.operator.validation.UserAccountValidator;
import com.rtd.utils.ResourceBundleUtils;
import com.rtd.utils.StackTraceUtil;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 * 
 */
public class ResetPasswordController extends BaseFormController
{
	private static final String CLASS_NAME = ResetPasswordController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private UserAccountDAO userAccountDAO;

	/**
	 * 
	 */
	public ResetPasswordController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return ModelAndView on GET
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView("forgotPassword");
		mav.addObject("command", new UserAccount());
		
		return mav;
	}

	/**
	 * @param request
	 * @param response
	 * @param userAccount
	 * @param result
	 * @return ModelAndView on POST
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("command") UserAccount userAccount, Errors result)
			throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView();
		UserAccountValidator validator = new UserAccountValidator();
		validator.validateUsername(userAccount, result);

		// need to look up the username in the db here.
		// if the user isn't found, we need to send an error,
		// otherwise we need to go to another screen where
		// the security questions are presented and if
		// the user answers them correctly, we'll let them
		// reset the password. otherwise, they're screwed.

		if (result.hasErrors())
		{
			mav.addObject("status", result);
			mav.addObject("command", userAccount);
			mav.setViewName("forgotPassword");			
		}

		else
		{
			try
			{	
				userAccount = getUserAccountDAO().findByUsername(userAccount.getUsername());
				
				if (userAccount == null)
				{
					mav.addObject("errorMessage", ResourceBundleUtils.getMessage("messages.usernameNotFound"));
					mav.setViewName("forgotPassword");
				}
				else
				{
					request.getSession().setAttribute("userAccount", userAccount);
					mav.addObject("command", userAccount);
					mav.setViewName("answerSecurityQuestions");
				}
			}
			catch (Exception e)
			{
				LOG.error(StackTraceUtil.getStackTrace(e));
			}
		}		

		return mav;
	}

	/**
	 * @return userAccountDAO
	 */
	public UserAccountDAO getUserAccountDAO()
	{
		return userAccountDAO;
	}

	/**
	 * @param userAccountDAO
	 */
	public void setUserAccountDAO(UserAccountDAO userAccountDAO)
	{
		this.userAccountDAO = userAccountDAO;
	}
}
