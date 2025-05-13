/**
 * 
 */
package com.rtd.operator.web;

import java.sql.SQLException;

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
import com.rtd.operator.validation.CreateAccountFormValidator;
import com.rtd.utils.StackTraceUtil;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 * 
 */
@Controller
@SessionAttributes("employeeAccountAccessBean")
public class RetrieveAccountFormController extends BaseFormController
{
	private static final String CLASS_NAME = RetrieveAccountFormController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private UserAccountDAO userAccountDAO;

	/**
	 * 
	 */
	public RetrieveAccountFormController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @param employeeAccountAccessBean
	 * @return ModelAndView on GET
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(
			HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("command") EmployeeAccountAccessBean employeeAccountAccessBean)
	{

		ModelAndView result = new ModelAndView();

		if (("contractor").equalsIgnoreCase(request.getParameter("type")))
		{
			employeeAccountAccessBean.setIsEmployee(Boolean.FALSE);
			result.setViewName("contractorRetrieveAccountForm");
		}
		else
		{
			employeeAccountAccessBean.setIsEmployee(Boolean.TRUE);
			result.setViewName(getSuccessView());
		}

		result.addObject("userAccount", employeeAccountAccessBean);

		return result;
	}

	/**
	 * @param request
	 * @param response
	 * @param employeeAccountAccessBean
	 * @param result
	 * @return ModelAndView on POST
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView onSubmit(
			HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("command") EmployeeAccountAccessBean employeeAccountAccessBean,
			Errors result) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		Boolean isEmployee = Boolean
				.valueOf(request.getParameter("isEmployee"));

		CreateAccountFormValidator validator = new CreateAccountFormValidator();
		validator.validate(employeeAccountAccessBean, result, isEmployee);

		// use case:  the user has already created an account, and the rtd_employee_id field
		// is unique in the database.  we need to tell the user that this ID is unique and taken already.
		
		if (getUserAccountDAO().findByEmployeeNumber(employeeAccountAccessBean.getEmployeeNumber()))
		{
			// if the user already exists, this is somebody stupid who forgot their username.
			// that being said, let's delete them from the operator_users table AND
			// the authorities table and move forward with new account creation.
		  LOG.info("User " + employeeAccountAccessBean.getEmployeeNumber() + " exists. Will delete and re-create...");
			getUserAccountDAO().deleteUser(employeeAccountAccessBean.getEmployeeNumber());
			
//			mav.addObject("accountAlreadyExists", Boolean.TRUE);
//			mav.addObject("status", result);
//			mav.setViewName(employeeAccountAccessBean.isEmployee() ? getSuccessView()
//					: "contractorRetrieveAccountForm");
//			return mav;
		}
		
		
		// if we got here, then the field data is at least valid.
		// next, we need to do a lookup in the database
		// by the rtd emp ID and make sure all is bueno.
		// if things are not bueno, the user will need to see
		// the retrieveAccountInformation form page again.
		boolean isLegitimate = false;
		try
		{
			isLegitimate = getUserAccountDAO().isLegitimateOperator(
					employeeAccountAccessBean);
		}
		catch (SQLException se)
		{
			se.printStackTrace();
			LOG.error(StackTraceUtil.getStackTrace(se));
		}

		if (result.hasErrors() || !isLegitimate)
		{
			mav.addObject("command", employeeAccountAccessBean);
			mav.addObject("recordNotFound", isLegitimate ? Boolean.FALSE
					: Boolean.TRUE);
			mav.addObject("status", result);
			mav.addObject("isEmployee", employeeAccountAccessBean.isEmployee());
			mav.setViewName(employeeAccountAccessBean.isEmployee() ? getSuccessView()
							: "contractorRetrieveAccountForm");
			return mav;
		}

		request.getSession().setAttribute("employeeAccountAccessBean",
				employeeAccountAccessBean);

		mav.setViewName("userVerify");

		return mav;
	}

	/**
	 * on init this gets called to register the custom property editor for the
	 * dateOfBirth field, converting it to a date on postBind
	 * 
	 * @param req
	 * @param binder
	 * @throws Exception
	 */
//	@InitBinder
//	public void initBinder(HttpServletRequest req,
//			ServletRequestDataBinder binder) throws Exception
//	{
//		binder.registerCustomEditor(Date.class, "dateOfBirth",
//				new CustomDateEditor(new SimpleDateFormat("MM/dd/yyyy"), true));
//		binder.registerCustomEditor(Date.class, "seniorityDate",
//				new CustomDateEditor(new SimpleDateFormat("MM/dd/yyyy"), true));
//	}

	/**
	 * @return the userAccountDAO
	 */
	public UserAccountDAO getUserAccountDAO()
	{
		return this.userAccountDAO;
	}

	/**
	 * @param aUserAccountDAO
	 */
	public void setUserAccountDAO(UserAccountDAO aUserAccountDAO)
	{
		this.userAccountDAO = aUserAccountDAO;
	}

}
