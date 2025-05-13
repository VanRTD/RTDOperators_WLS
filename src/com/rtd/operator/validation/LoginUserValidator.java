/**
 * 
 */
package com.rtd.operator.validation;


import org.springframework.validation.Errors;

import com.rtd.operator.model.UserLogin;
import com.rtd.utils.ResourceBundleUtils;
import com.rtd.utils.StringUtils;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 * 
 */
public class LoginUserValidator
{

	private static final Logger LOG = LogManager.getLogger(LoginUserValidator.class.getName());
	/**
	 * 
	 */
	public LoginUserValidator()
	{
		super();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.validation.Validator#supports(java.lang.Class)
	 */

	public boolean supports(Class clazz)
	{
		return UserLogin.class.equals(clazz);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.validation.Validator#validate(java.lang.Object,
	 * org.springframework.validation.Errors)
	 */
	public void validate(Object target, Errors errors)
	{
		UserLogin userLogin = (UserLogin) target;
		if (LOG.isDebugEnabled()) {
		  LOG.debug("Validating user: " + userLogin.getUsername());
		}
		if (StringUtils.isNullOrEmpty(userLogin.getUsername()))
		{
			errors.rejectValue("username", "messages.required", new Object[]
			{ ResourceBundleUtils.getMessage("messages.username") }, "");
		} else {
			LOG.info("validating UserLogin: " + userLogin.getUsername());
		}
		if (StringUtils.isNullOrEmpty(userLogin.getPassword()))
		{
			errors.rejectValue("password", "messages.required", new Object[]
			{ ResourceBundleUtils.getMessage("messages.password") }, "");
		}

	}

}
