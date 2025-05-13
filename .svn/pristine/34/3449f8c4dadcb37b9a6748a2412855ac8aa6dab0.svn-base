/**
 * 
 */
package com.rtd.operator.web.secure;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.model.MondayMorningQ;
import com.rtd.operator.web.BaseFormController;
import com.rtd.utils.ResourceBundleUtils;
import com.rtd.utils.StackTraceUtil;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

/**
 * @author Justin Hancock
 * @author Van Tran
 */
public class MondayMorningQController extends BaseFormController {

	// set up logging
	private static final String CLASS_NAME = MondayMorningQController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	public MondayMorningQController() {
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return returns the mondayMorningQhome screen on a GET request
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ModelAndView mav = new ModelAndView("mondayMorningQHome");

		// Directory path here
		final String mmqDir = "MMD";
		final String documentPath = getDocumentRepositoryLocation() + mmqDir;
		LOG.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ = " + documentPath);
		
		try {
			final File folder = new File(documentPath);
			final File[] listOfFiles = folder.listFiles();
			
			ArrayList<MondayMorningQ> tmpList = new ArrayList<MondayMorningQ>();
			final SimpleDateFormat formatter = new SimpleDateFormat("MM.dd.yyyy");

			if (listOfFiles == null) {
				throw new IOException("No files found in " + documentPath);
			}
			
			LOG.info("LENGTH = " + listOfFiles.length);

			for (int i = 0; i < listOfFiles.length; i++)
			{			
				MondayMorningQ mmd = new MondayMorningQ();
				try {
					//Example filename: Inside Connections 7.21.2021.pdf
					char tmpName = listOfFiles[i].getName().charAt(0);
		            if ("I".equalsIgnoreCase(Character.toString(tmpName))) {
		            	String fName = listOfFiles[i].getName().substring(19,listOfFiles[i].getName().lastIndexOf("."));
//						Date date = formatter.parse(fName.replace('.', '/'));
						Date date = formatter.parse(fName);
						mmd.setFileNameShort(formatter.format(date));
			            mmd.setFileNameFull(listOfFiles[i].getName());
			            tmpList.add(mmd);
		            }
		            
		            
				} catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}	
			}
				
			Collections.sort(tmpList, new Comparator<MondayMorningQ>() {
	        @Override
	        public int compare(MondayMorningQ o1, MondayMorningQ o2) {
	            try {
	                //sort array of objects in descending order listing most recent date at top
	            	return formatter.parse(o2.getFileNameShort()).compareTo(formatter.parse(o1.getFileNameShort()));
	            } catch (ParseException e) {
	                throw new IllegalArgumentException(e);
	            }
	        }
			});

			mav.addObject("mmqFiles", tmpList);
			
		} catch (Exception e) {
		      LOG.error(StackTraceUtil.getStackTrace(e));
	    }
		
		return mav;
	}

	/**
	 * @return returns the doc repository location
	 */
	private String getDocumentRepositoryLocation()
	{
		return ResourceBundleUtils.getApplicationProperty("operator.documentRoot");
	}

}