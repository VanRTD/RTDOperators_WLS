/**
 * 
 */
package com.rtd.operator.validation;

import com.rtd.operator.model.UserAccount;
import com.rtd.utils.ResourceBundleUtils;
import com.rtd.utils.StringUtils;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.validation.Errors;


/**
 * @author Justin Hancock
 * 
 */
public class UserAccountValidator
{

	private static final Logger LOG = LogManager.getLogger(UserAccountValidator.class.getName());
	
	/**
	 * 
	 */
	public UserAccountValidator()
	{
		super();
	}

	public boolean supports(Class clazz)
	{
		return UserAccount.class.equals(clazz);
	}

	/**
	 * @param account
	 * @param errors
	 */
	public void validate(UserAccount account, Errors errors)
	{
		// JJH - the validatePasswordLength method got broken out into 
		// a private method as it is used in two flows.
		validatePasswordLength(account,errors);
		
		if (StringUtils.isNullOrEmpty(account.getUsername()))
		{
			errors.rejectValue("username", "messages.required", new Object[]
			{ ResourceBundleUtils.getMessage("messages.username") }, "");
		}

		if (StringUtils.isNullOrEmpty(account.getPassword()))
		{
			errors.rejectValue("password", "messages.required", new Object[]
			{ ResourceBundleUtils.getMessage("messages.password") }, "");
		}		

		if (StringUtils.isNullOrEmpty(account.getConfirmPassword()))
		{
			errors.rejectValue("confirmPassword", "messages.required",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.confirmPassword") }, "");
		}

		if (!account.getPassword().equalsIgnoreCase(
				account.getConfirmPassword()))
		{
			errors.rejectValue("confirmPassword","messages.doesNotMatchPassword");
		}

	}

	/**
	 * @param account
	 * @param errors
	 */
	public void validatePasswordLikeness(UserAccount account, Errors errors)
	{
		validatePasswordLength(account,errors);
		
		if (StringUtils.isNullOrEmpty(account.getPassword()))
		{
			errors.rejectValue("password", "messages.required", new Object[]
			{ ResourceBundleUtils.getMessage("messages.password") }, "");
		}

		if (StringUtils.isNullOrEmpty(account.getConfirmPassword()))
		{
			errors.rejectValue("confirmPassword", "messages.required",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.confirmPassword") }, "");
		}

		if (!account.getPassword().equalsIgnoreCase(
				account.getConfirmPassword()))
		{
			errors.rejectValue("confirmPassword",
					"messages.doesNotMatchPassword");
		}

	}

	/**
	 * validate the username only (userId in the resetPassword path)
	 * @param account
	 * @param errors 
	 */
	public void validateUsername(UserAccount account, Errors errors)
	{
		validateUsernameLength(account, errors);
		if (StringUtils.isNullOrEmpty(account.getUsername()))
		{
			errors.rejectValue("username", "messages.required", new Object[]
			{ ResourceBundleUtils.getMessage("messages.username") }, "");
		}
	}

	/**
	 * @param account
	 * @param sessionUserAccount
	 * @param errors
	 */
	public void validateSecurityAnswers(UserAccount account,
			UserAccount sessionUserAccount, Errors errors)
	{
		if (StringUtils.isNullOrEmpty(account.getSecurityAnswerOne()))
		{
			errors.rejectValue("securityAnswerOne", "messages.required",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityAnswerOne") }, "");
		}

		if (StringUtils.isNullOrEmpty(account.getSecurityAnswerTwo()))
		{
			errors.rejectValue("securityAnswerTwo", "messages.required",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityAnswerTwo") }, "");
		}

		/* test that the answers to the security questions are correct! */
		
		if (LOG.isDebugEnabled()) {
			LOG.debug("Security Answer One. Comparing..."
					+ "\n Stored value:" + sessionUserAccount.getSecurityAnswerOne()
					+ "\nEntered value:" + account.getSecurityAnswerOne());
		}

		if (!sessionUserAccount.getSecurityAnswerOne().equalsIgnoreCase(
				account.getSecurityAnswerOne()))
		{
			errors.rejectValue("securityAnswerOne", "messages.incorrectAnswer",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityAnswerTwo") }, "");
		}
		
		if (LOG.isDebugEnabled()) {
			LOG.debug("Security Answer Two. Comparing..."
					+ "\n Stored value:" + sessionUserAccount.getSecurityAnswerTwo() 
					+ "\nEntered value:" + account.getSecurityAnswerTwo());
		}
		
		if (!sessionUserAccount.getSecurityAnswerTwo().equalsIgnoreCase(
				account.getSecurityAnswerTwo()))
		{
			errors.rejectValue("securityAnswerTwo", "messages.incorrectAnswer",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityAnswerTwo") }, "");
		}

	}

	/**
	 * @param userAccount
	 * @param errors
	 */
	public void validateSecurityQuestions(UserAccount userAccount, Errors errors)
	{
		if (StringUtils.isNullOrEmpty(userAccount.getSecurityQuestionOne()))
		{
			errors.rejectValue("securityQuestionOne", "messages.required",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityQuestionOne") }, "");
		}

		if (userAccount.getSecurityQuestionOne().equalsIgnoreCase(
				userAccount.getSecurityQuestionTwo()))
		{
			errors.rejectValue("securityQuestionTwo", "messages.unique",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityQuestionTwo") }, "");
		}

		if (StringUtils.isNullOrEmpty(userAccount.getSecurityQuestionTwo()))
		{
			errors.rejectValue("securityQuestionTwo", "messages.required",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityQuestionTwo") }, "");
		}

		if (StringUtils.isNullOrEmpty(userAccount.getSecurityAnswerOne()))
		{
			errors.rejectValue("securityAnswerOne", "messages.required",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityAnswerOne") }, "");
		}

		if (StringUtils.isNullOrEmpty(userAccount.getSecurityAnswerTwo()))
		{
			errors.rejectValue("securityAnswerTwo", "messages.required",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityAnswerTwo") }, "");
		}

		if (StringUtils.isNullOrEmpty(userAccount.getSecurityQuestionTwo()))
		{
			errors.rejectValue("securityAnswerTwo", "messages.required",
					new Object[]
					{ ResourceBundleUtils
							.getMessage("messages.securityAnswerTwo") }, "");
		}
	}
	
	/**
	 * @param account
	 * @param errors
	 */
	private void validatePasswordLength(UserAccount account, Errors errors)
	{
		// JJH - passwords must be at least 10 characters in length.
		if (account.getPassword().length() < 10)
		{
			errors.rejectValue("password", "messages.passwordTooShort", new Object[]
			{ ResourceBundleUtils.getMessage("messages.passwordTooShort") }, "");
		}
	}
	
	/**
	 * @param account
	 * @param errors
	 */
	private void validateUsernameLength(UserAccount account, Errors errors)
	{
		if (account.getUsername().length() < 6)
		{
			errors.rejectValue("username", "messages.usernameTooShort", new Object[]
			 {ResourceBundleUtils.getMessage("messages.usernameTooShort") }, "");
		}
	}

}
