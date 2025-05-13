package com.rtd.operator.web.secure;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.model.FileListingBean;
import com.rtd.operator.web.BaseFormController;
import com.rtd.utils.ResourceBundleUtils;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Van Tran
 */

public class PullinsForReliefsController extends BaseFormController{
	
	// set up logging
	private static final String CLASS_NAME = PullinsForReliefsController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	public PullinsForReliefsController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return returns the pullinsForReliefsHome screen on a GET request
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView("pullinsForReliefsHome");

		// Directory path here
		final String pullinsDir = "OperatorMiscFile/PullinsForReliefs/";
		final String pullinsDir_Bus = pullinsDir + "Bus";
		final String pullinsDir_Rail = pullinsDir + "Rail";

		final String documentPath_Bus = getDocumentRepositoryLocation() + pullinsDir_Bus;
		final String documentPath_Rail = getDocumentRepositoryLocation() + pullinsDir_Rail;
		
		//LOG.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ = " + documentPath_Bus);
		List<FileListingBean> listFiles_Bus = new ArrayList<FileListingBean>();
		List<FileListingBean> listFiles_Rail = new ArrayList<FileListingBean>();
		
		final File folder_Bus = new File(documentPath_Bus);
		final File folder_Rail = new File(documentPath_Rail);
		
		final File[] listOfFiles_Bus = folder_Bus.listFiles();
		final File[] listOfFiles_Rail = folder_Rail.listFiles();

		//LOG.info("LENGTH = " + listOfFiles_Bus.length);
		
		//Begin directory listing of each division
		//Bus
		for (int i = 0; i < listOfFiles_Bus.length; i++)
		{
			if (listOfFiles_Bus[i].isFile())
			{
				Arrays.sort(listOfFiles_Bus, new Comparator<File>()
				{
					public int compare(File f1, File f2) 
					{
						return Long.valueOf(f2.lastModified()).compareTo(f1.lastModified());
					}	
				});

				LOG.info("ADD FILE = " + listOfFiles_Bus[i].getName());

				FileListingBean pfr_Bus = new FileListingBean();
				
				//set file name as how it was uploaded
				pfr_Bus.setFileName(listOfFiles_Bus[i].getName());
				//set file name without file extension
				int index = listOfFiles_Bus[i].getName().lastIndexOf('.');
				if (index>0&& index <= listOfFiles_Bus[i].getName().length() - 2 ) {
					pfr_Bus.setFileNameWithoutExtension(listOfFiles_Bus[i].getName().substring(0, index));
				}
				//set date modified when the file was uploaded
				SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy h:mm a");
				pfr_Bus.setFileDateModified(sdf.format(listOfFiles_Bus[i].lastModified()));
				//add all elements to the list
				listFiles_Bus.add(pfr_Bus);
			}
		}

		mav.addObject("busFiles", listFiles_Bus);
		
		//Rail
		for (int i = 0; i < listOfFiles_Rail.length; i++)
		{
			if (listOfFiles_Rail[i].isFile())
			{
				Arrays.sort(listOfFiles_Rail, new Comparator<File>()
				{
					public int compare(File f1, File f2) 
					{
						return Long.valueOf(f2.lastModified()).compareTo(f1.lastModified());
					}	
				});

				LOG.info("ADD FILE = " + listOfFiles_Rail[i].getName());

				FileListingBean pfr_Rail = new FileListingBean();
				
				//set file name as how it was uploaded
				pfr_Rail.setFileName(listOfFiles_Rail[i].getName());
				//set file name without file extension
				int index = listOfFiles_Rail[i].getName().lastIndexOf('.');
				if (index>0&& index <= listOfFiles_Rail[i].getName().length() - 2 ) {
					pfr_Rail.setFileNameWithoutExtension(listOfFiles_Rail[i].getName().substring(0, index));
				}
				//set date modified when the file was uploaded
				SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy h:mm a");
				pfr_Rail.setFileDateModified(sdf.format(listOfFiles_Rail[i].lastModified()));
				//add all elements to the list
				listFiles_Rail.add(pfr_Rail);
			}
		}

		mav.addObject("railFiles", listFiles_Rail);

		return mav;
		//End directory listing of each division
	}

	/**
	 * @return returns the doc repository location
	 */
	private String getDocumentRepositoryLocation()
	{
		return ResourceBundleUtils.getApplicationProperty("operator.documentRoot");
	}
}
