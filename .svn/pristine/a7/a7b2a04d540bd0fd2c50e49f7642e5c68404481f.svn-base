/**
 * 
 */
package com.rtd.operator.web.secure;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.web.BaseFormController;

/**
 * @author Luis Roche
 * 
 * 
 */
@Controller
public class DisclaimerController extends BaseFormController
{
  private static final String CLASS_NAME = DisclaimerController.class.getName();
  private static final Log LOG = LogFactory.getLog(CLASS_NAME);

  public DisclaimerController()
  {
    super();
  }

  /**
   * @param request
   * @param response
   * @return
   * @throws ServletException
   * @throws IOException
   * 
   */
  @RequestMapping()
  public ModelAndView handleRequest(HttpServletRequest request,
      HttpServletResponse response) throws ServletException, IOException
  {
    ModelAndView model = null;
    if (request.getParameter("Accept_Disclaimer") != null) {
      request.getSession().setAttribute("disclaimer", new Boolean(true));
      model = new ModelAndView("redirect:/getLoginForm.do");
    } else {
      request.getSession().setAttribute("disclaimer", new Boolean(false));
      model = new ModelAndView("redirect:/");
    }

    return model;
  }
}
