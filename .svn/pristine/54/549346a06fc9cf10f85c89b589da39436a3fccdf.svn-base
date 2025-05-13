package com.rtd.operator.web;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DisclaimerValidatorFilter  implements Filter {

  @Override
  public void destroy() {
    // TODO Auto-generated method stub
    
  }

  @Override
  public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
      throws IOException, ServletException {
    
    HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        
         if (request.getRequestURL().toString().contains("css") || 
            request.getRequestURL().toString().contains("js") || 
            request.getRequestURL().toString().contains("images") || 
            request.getRequestURL().toString().endsWith("operator/") ||
            request.getRequestURL().toString().endsWith("operator") ||
            request.getRequestURL().toString().endsWith("index.do")) {
            chain.doFilter(req, resp);
            return;
        }

         Boolean disclaimer = (Boolean) request.getSession().getAttribute("disclaimer");
         
         if (disclaimer == null || !disclaimer) {
          request.getSession().setAttribute("disclaimer", new Boolean(false));
          response.sendRedirect("/operator");
            return;
        } 
            
        chain.doFilter(req, resp);
        return;
  }

  @Override
  public void init(FilterConfig arg0) throws ServletException {
    // TODO Auto-generated method stub
    
  }

}
