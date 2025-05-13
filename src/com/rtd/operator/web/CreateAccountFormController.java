/**
 * 
 */
package com.rtd.operator.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.dao.UserAccountDAO;
import com.rtd.operator.model.EmployeeAccountAccessBean;
import com.rtd.operator.model.UserAccount;
import com.rtd.operator.validation.UserAccountValidator;

/**
 * @author Justin Hancock
 * 
 */
@Controller
public class CreateAccountFormController extends BaseFormController
{

	private UserAccountDAO userAccountDAO;

	/**
	 * 
	 */
	public CreateAccountFormController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @param userAccount
	 * @return a ModelAndView
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("command") UserAccount userAccount)
	{
		return new ModelAndView("createAccountForm");
	}

	/**
	 * @param request
	 * @param response
	 * @param userAccount
	 * @param result
	 * @return ModelAndView
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("command") UserAccount userAccount, Errors result)
			throws Exception
	{
		// 1. get the EmployeeAccountBean from the session.
		// (we need to at least make sure they had been verified
		// in the HR tables, or oracle, or whatever.

		ModelAndView mav = new ModelAndView("securityQuestionsForm");
		mav.addObject("securityQuestions", getSecurityQuestions());
		UserAccountValidator validator = new UserAccountValidator();
		validator.validate(userAccount, result);

		// JJH - we need to make sure the username is unique, b/c we have
		// a unique constraint on the OPERATOR_USERS table

		// UserAccount existingUserAccountInDatabase =
		// getUserAccountDAO().findByUsername(userAccount.getUsername());

		if (result.hasErrors())
		{
			// mav.addObject("error",
			// ResourceBundleUtils.getMessage("messages.accountAlreadyExists"));
			mav.addObject("status", result);
			mav.setViewName("createAccountForm");
		}

		mav.addObject("command", userAccount);
		EmployeeAccountAccessBean bean = (EmployeeAccountAccessBean) request
				.getSession().getAttribute("employeeAccountAccessBean");

		bean.setUserAccount(userAccount);

		return mav;
	}

	public UserAccountDAO getUserAccountDAO()
	{
		return userAccountDAO;
	}

	public void setUserAccountDAO(UserAccountDAO userAccountDAO)
	{
		this.userAccountDAO = userAccountDAO;
	}

}
