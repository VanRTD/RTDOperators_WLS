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

import com.rtd.operator.model.DistrictShuttle;
import com.rtd.operator.web.BaseFormController;
import com.rtd.utils.ResourceBundleUtils;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class DistrictShuttleController extends BaseFormController {
	// set up logging
		private static final String CLASS_NAME = DistrictShuttleController.class.getName();
		private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

		public DistrictShuttleController()
		{
			super();
		}

		/**
		 * @param request
		 * @param response
		 * @return returns the districtShuttleHome screen on a GET request
		 * @throws ServletException
		 * @throws IOException
		 */
		@RequestMapping(method = RequestMethod.GET)
		public ModelAndView handleRequest(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException
		{
			ModelAndView mav = new ModelAndView("districtShuttleHome");

			// Directory path here
			final String districtShuttleDir = "OperatorMiscFile/RTDRelatedInfo/District_Shuttle";
			final String documentPath = getDocumentRepositoryLocation() + districtShuttleDir;
			LOG.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ = " + documentPath);
			List<DistrictShuttle> listDistrictShuttleFiles = new ArrayList<DistrictShuttle>();
			
			final File folder = new File(documentPath);
			final File[] listOfFiles = folder.listFiles();

			LOG.info("LENGTH = " + listOfFiles.length);
			
			for (int i = 0; i < listOfFiles.length; i++)
			{
				if (listOfFiles[i].isFile())
				{
					Arrays.sort(listOfFiles, new Comparator<File>()
					{
						public int compare(File f1, File f2) 
						{
							return Long.valueOf(f2.lastModified()).compareTo(f1.lastModified());
						}	
					});
					
					LOG.info("ADD FILE = " + listOfFiles[i].getName());

					DistrictShuttle dc = new DistrictShuttle();

					//set file name as how it was uploaded
					dc.setFileName(listOfFiles[i].getName());
					//set file name without file extension
					int index = listOfFiles[i].getName().lastIndexOf('.');
					if (index>0&& index <= listOfFiles[i].getName().length() - 2 ) {
						dc.setFileNameWithoutExtension(listOfFiles[i].getName().substring(0, index));
					}
					//set date modified when the file was uploaded
					SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy h:mm a");
					dc.setFileDateModified(sdf.format(listOfFiles[i].lastModified()));
					//add all elements to the list
					listDistrictShuttleFiles.add(dc);
				}
			}

			mav.addObject("districtShuttleFiles", listDistrictShuttleFiles);
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
