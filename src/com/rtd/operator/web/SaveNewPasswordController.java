/**
 * 
 */
package com.rtd.operator.web;

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
import com.rtd.utils.StackTraceUtil;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 *
 */
public class SaveNewPasswordController extends BaseFormController
{
	private static final String CLASS_NAME = SaveNewPasswordController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private UserAccountDAO userAccountDAO;
	
	/**
	 * 
	 */
	public SaveNewPasswordController()
	{
		super();
	}
	
	/**
	 * @param request
	 * @param response
	 * @param userAccount
	 * @return ModelAndView on GET request
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("command") UserAccount userAccount)
	{
		return new ModelAndView("passwordReset");
	}
	
	/**
	 * @param request
	 * @param response
	 * @param userAccount
	 * @param result
	 * @return ModelAndView on POST
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("command") UserAccount userAccount, Errors result)
	{		
		ModelAndView mav = new ModelAndView();
		
		UserAccountValidator validator = new UserAccountValidator();
		validator.validatePasswordLikeness(userAccount, result);
		
		if (result.hasErrors())
		{
			mav.setViewName("resetPassword");
			mav.addObject("status", result);			
		}
		
		else
		{		
			UserAccount sessionUserAccount = (UserAccount) request.getSession().getAttribute("userAccount");
			try
			{
				userAccount.setUsername(sessionUserAccount.getUsername());
				getUserAccountDAO().updateUserAccountPasswords(userAccount);
				mav.setViewName("loginForm");
			}
						
			catch(Exception e)
			{
				LOG.error(StackTraceUtil.getStackTrace(e));
			}
		}
		
		// we need to validate the security answers here
		return mav;
	}
	
	
	/**
	 * @return the userAccountDAO
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
