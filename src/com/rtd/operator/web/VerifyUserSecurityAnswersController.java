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
import com.rtd.operator.service.HashingService;
import com.rtd.operator.validation.UserAccountValidator;

/**
 * @author Justin Hancock
 * 
 */
public class VerifyUserSecurityAnswersController extends BaseFormController
{
	private HashingService hashingService;
	private UserAccountDAO userAccountDAO;

	/**
	 * 
	 */
	public VerifyUserSecurityAnswersController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @param userAccount
	 * @return ModelAndView on GET
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
			@ModelAttribute("command") UserAccount userAccount, Errors result) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		UserAccount sessionUserAccount = (UserAccount) request.getSession()
				.getAttribute("userAccount");
		UserAccountValidator validator = new UserAccountValidator();
		validator.validateSecurityAnswers(hashUserSecurityAnswers(userAccount), sessionUserAccount,
				result);

		if (result.hasErrors())
		{
			mav.setViewName("answerSecurityQuestions");
			mav.addObject("status", result);
		}

		else
		{
			// the user answered the questions correctly... we may proceed.
			mav.setViewName("resetPassword");
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

	public HashingService getHashingService()
	{
		return hashingService;
	}

	public void setHashingService(HashingService hashingService)
	{
		this.hashingService = hashingService;
	}
	
	// helper method
	
	/**
	 * @param aUserAccount
	 * @return the userAccount but with SHA1 encrypted security answers which we compare to 
	 * 		   the hashed values stored in the DB.
	 * @throws Exception
	 */
	private UserAccount hashUserSecurityAnswers(UserAccount aUserAccount)
	throws Exception
	{		
		// JJH - we want to new up a UserAccount here so that if they fail to enter the 
		// correct answers they don't come back hashed and show in the form!!!
		UserAccount userAccount = new UserAccount();		
		userAccount.setSecurityAnswerOne(getHashingService().encrypt(aUserAccount.getSecurityAnswerOne()));
		userAccount.setSecurityAnswerTwo(getHashingService().encrypt(aUserAccount.getSecurityAnswerTwo()));
		return userAccount;		
	}

}
