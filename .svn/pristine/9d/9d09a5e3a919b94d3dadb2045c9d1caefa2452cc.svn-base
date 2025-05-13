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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.dao.UserAccountDAO;
import com.rtd.operator.model.EmployeeAccountAccessBean;
import com.rtd.operator.model.UserAccount;
import com.rtd.operator.validation.UserAccountValidator;
import com.rtd.utils.StackTraceUtil;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 * 
 */
@Controller
@SessionAttributes("employeeAccountAccessBean")
public class CreateSecurityAnswersController extends BaseFormController
{
	private static final String CLASS_NAME = CreateSecurityAnswersController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private UserAccountDAO userAccountDAO;

	/**
	 * 
	 */
	public CreateSecurityAnswersController()
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
		return new ModelAndView("securityQuestionsForm");
	}

	/**
	 * @param request
	 * @param response
	 * @param userAccount
	 * @param result
	 * @return ModelAndView on POST request
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("command") UserAccount userAccount, Errors result)
	{
		ModelAndView mav = new ModelAndView("loginForm");

		UserAccountValidator validator = new UserAccountValidator();
		validator.validateSecurityQuestions(userAccount, result);

		if (result.hasErrors())
		{
			mav.addObject("errors", result);
			mav.addObject("command", userAccount);
			mav.setViewName("securityQuestionsForm");
			mav.addObject("securityQuestions", getSecurityQuestions());
			// if we're successful, send the user to the login screen
			// with a note that thanks them for creating the account, yada yada...
			//mav.addObject("successMessage",	"Account creation successful.  Please Login.");
			
		}

		else
		{
			try
			{
				EmployeeAccountAccessBean theBean = (EmployeeAccountAccessBean) request.getSession().getAttribute("employeeAccountAccessBean");
				theBean.getUserAccount().setSecurityAnswerOne(userAccount.getSecurityAnswerOne());
				theBean.getUserAccount().setSecurityAnswerTwo(userAccount.getSecurityAnswerTwo());
				theBean.getUserAccount().setSecurityQuestionOne(userAccount.getSecurityQuestionOne());
				theBean.getUserAccount().setSecurityQuestionTwo(userAccount.getSecurityQuestionTwo());
				theBean.getUserAccount().setEmployeeNumber(theBean.getEmployeeNumber());
				theBean.getUserAccount().setIsEmployee(theBean.isEmployee());
				getUserAccountDAO().saveUserAccount(theBean.getUserAccount());
				getUserAccountDAO().saveUserAuthority(theBean.getUserAccount().getUsername(), theBean.getEmployeeNumber(), theBean.isEmployee());
				
			}
			catch(Exception e)
			{
				// JJH - we couldn't save the user or their authority for some reason.
				LOG.error(StackTraceUtil.getStackTrace(e));
				//LOG.severe(CLASS_NAME + e);
				
				mav.setViewName("securityQuestionsForm");
			} 			
		}

		
		return mav;

	}

	/**
	 * @param aUserAccountDAO
	 */
	public void setUserAccountDAO(UserAccountDAO aUserAccountDAO)
	{
		this.userAccountDAO = aUserAccountDAO;
	}

	/**
	 * @return userAccountDAO
	 */
	public UserAccountDAO getUserAccountDAO()
	{
		return this.userAccountDAO;
	}

}
