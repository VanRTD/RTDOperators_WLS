package com.rtd.operator.web.secure.extraboard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.dao.UserAccountDAO;
import com.rtd.operator.dao.extraboard.ExtraboardDAO;
import com.rtd.operator.model.extraboard.Extraboard;
import com.rtd.operator.web.BaseFormController;
import com.rtd.utils.StackTraceUtil;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


public class ExtraboardListController extends BaseFormController{
	// set up logging 
	private static final String CLASS_NAME = ExtraboardListController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);
	private ExtraboardDAO extraboardDAO;
	private UserAccountDAO userAccountDAO;
	
	public ExtraboardListController() {
		super();
	}

	/**
	 * On a GET request for the extraboard information, go get the employee data for the 
	 * logged in user from the user account by using the username in the where clause of the SQL 
	 * statement in the query of the operator_users table because there can only be one of each username.
	 * After you get the employee id then you can pass that to the getExtraboardData method to get the user's
	 * extraboard assignment. Then send them to the extraboard.jsp
	 * 
	 * @param request
	 * @param response
	 * @return extraboard.jsp
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView("extraboard");
			try {
				List<Extraboard> ebList;
				
				// get the data by empId.
				String empNum = userAccountDAO.getEmpId(getUserName());
				LOG.info("get the extraboard data from the DAO");
				/* if there is an admin request parameter and it is "true"
				 * then the user is an admin and they need to see all of 
				 * the extraboard data.
				 * 
				 * else, use the employees id and then display the data that
				 * is only related to them because they are not an admin
				 */
				if (isAdminRole())
				{
					ebList = extraboardDAO.getAllExtraboardData();
				} else {
					ebList = extraboardDAO.getExtraBoardData(empNum);
				}
				
				/* DEBUG  hard coded emp num to test extraboard functionality. insert an emp id to test the 
				 * functionality. allows you to test if the data displayed matches the data in the db. 
				List<Extraboard> ebList = extraboardDAO.getExtraBoardData("18288"); */
				mav.addObject("ebList", ebList);
			} catch (Exception e) {
				LOG.error(StackTraceUtil.getStackTrace(e));	
			}
		return mav;
	}
	
	public ExtraboardDAO getExtraboardDAO() {
		return extraboardDAO;
	}
	
	public void setExtraboardDAO(ExtraboardDAO extraboardDAO) {
		this.extraboardDAO = extraboardDAO;
	}
	
	public UserAccountDAO getUserAccountDAO() {
		return userAccountDAO;
	}
	
	public void setUserAccountDAO(UserAccountDAO userAccountDAO) {
		this.userAccountDAO = userAccountDAO;
	}
}
