/**
 * 
 */
package com.rtd.operator.validation;

import org.springframework.validation.Errors;

import com.rtd.operator.model.EmployeeAccountAccessBean;
import com.rtd.utils.ResourceBundleUtils;
import com.rtd.utils.StringUtils;

/**
 * @author Justin Hancock
 * 
 */
public class CreateAccountFormValidator
{

	/**
	 * 
	 */
	public CreateAccountFormValidator()
	{
		super();
	}

	public boolean supports(Class clazz)
	{
		return EmployeeAccountAccessBean.class.equals(clazz);
	}

	/**
	 * @param commandBean
	 * @param errors
	 *            We need to confirm that each field in the commandBean is not
	 *            null, and not empty since all 3 fields are required in order
	 *            for verification.
	 */
	public void validate(Object commandBean, Errors errors, Boolean isEmployee)
	{
		EmployeeAccountAccessBean bean = (EmployeeAccountAccessBean) commandBean;
		
		if (StringUtils.isNullOrEmpty(bean.getEmployeeNumber()))
		{
			errors.rejectValue("employeeNumber", "messages.required",
				new Object[]{ ResourceBundleUtils.getMessage("messages.employeeNumber") },"");
		}

		if (isEmployee)
		{
		
			if (bean.getLastFourSSNum() == null)
			{
				errors.rejectValue("lastFourSSNum", "messages.required",
					new Object[]{ ResourceBundleUtils.getMessage("messages.lastFourSSNum") },"");
			}
	
			if (bean.getDateOfBirth() == null)
			{
				errors.rejectValue("dateOfBirth", "messages.required",
					new Object[]{ ResourceBundleUtils.getMessage("messages.dateOfBirth") },"");
			}
		
		}
		// we're dealing with a contractor, and thus we have different initial fields
		// to validate than an employee
		else
		{
			if (StringUtils.isNullOrEmpty(bean.getLastName()))
			{
				errors.rejectValue("lastName", "messages.required",
					new Object[]{ ResourceBundleUtils.getMessage("messages.lastName") },"");
			}
			
//			if (bean.getSeniorityDate() == null)
//			{
//				errors.rejectValue("seniorityDate", "messages.required",
//					new Object[]{ ResourceBundleUtils.getMessage("messages.seniorityDate") },"");
//			}
		}
		
	}

}