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

public class EducationTrainingController extends BaseFormController{
	
	// set up logging
	private static final String CLASS_NAME = EducationTrainingController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	public EducationTrainingController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return returns the eduTrainingHome screen on a GET request
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView("eduTrainingHome");

		// Directory path here
		final String etdDir = "OperatorMiscFile/RTDRelatedInfo/ETD/";
		final String dir_ClassInfo = etdDir + "Class_Info";
		final String dir_RegistrationInfo = etdDir + "Registration_Info";

		final String documentPath_Boulder = getDocumentRepositoryLocation() + dir_ClassInfo;
		final String documentPath_EastMetro = getDocumentRepositoryLocation() + dir_RegistrationInfo;
		
		List<FileListingBean> listFiles_CI = new ArrayList<FileListingBean>();
		List<FileListingBean> listFiles_RI = new ArrayList<FileListingBean>();
		
		final File folder_CI = new File(documentPath_Boulder);
		final File folder_RI = new File(documentPath_EastMetro);
		
		final File[] listOfFiles_CI = folder_CI.listFiles();
		final File[] listOfFiles_RI = folder_RI.listFiles();
		
		//Begin directory listing of each category
		//Begin Class Info files listing
		for (int i = 0; i < listOfFiles_CI.length; i++)
		{
			if (listOfFiles_CI[i].isFile())
			{
				Arrays.sort(listOfFiles_CI, new Comparator<File>()
				{
					public int compare(File f1, File f2) 
					{
						return Long.valueOf(f2.lastModified()).compareTo(f1.lastModified());
					}	
				});

				LOG.info("ADD FILE = " + listOfFiles_CI[i].getName());

				FileListingBean etd_ClassInfo = new FileListingBean();
				
				//set file name as how it was uploaded
				etd_ClassInfo.setFileName(listOfFiles_CI[i].getName());
				//set file name without file extension
				int index = listOfFiles_CI[i].getName().lastIndexOf('.');
				if (index>0&& index <= listOfFiles_CI[i].getName().length() - 2 ) {
					etd_ClassInfo.setFileNameWithoutExtension(listOfFiles_CI[i].getName().substring(0, index));
				}
				//set date modified when the file was uploaded
				SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy h:mm a");
				etd_ClassInfo.setFileDateModified(sdf.format(listOfFiles_CI[i].lastModified()));
				//add all elements to the list
				listFiles_CI.add(etd_ClassInfo);
			}
		}

		mav.addObject("classInfoFiles", listFiles_CI);
		// End Class Info files listing
		
		// Begin Registration Info files listing
		for (int i = 0; i < listOfFiles_RI.length; i++)
		{
			if (listOfFiles_RI[i].isFile())
			{
				Arrays.sort(listOfFiles_RI, new Comparator<File>()
				{
					public int compare(File f1, File f2) 
					{
						return Long.valueOf(f2.lastModified()).compareTo(f1.lastModified());
					}	
				});
				
				LOG.info("ADD FILE = " + listOfFiles_RI[i].getName());
				
				FileListingBean etd_RegistrationInfo = new FileListingBean();
				
				//set file name as how it was uploaded
				etd_RegistrationInfo.setFileName(listOfFiles_RI[i].getName());
				//set file name without file extension
				int index = listOfFiles_RI[i].getName().lastIndexOf('.');
				if (index>0&& index <= listOfFiles_RI[i].getName().length() - 2 ) {
					etd_RegistrationInfo.setFileNameWithoutExtension(listOfFiles_RI[i].getName().substring(0, index));
				}
				//set date modified when the file was uploaded
				SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy h:mm a");
				etd_RegistrationInfo.setFileDateModified(sdf.format(listOfFiles_RI[i].lastModified()));
				//add all elements to the list
				listFiles_RI.add(etd_RegistrationInfo);
			}
		}

		mav.addObject("registrationInfoFiles", listFiles_RI);
		// End Registration Info files listing
		
		return mav;
		//End directory listing of each category
	}

	/**
	 * @return returns the doc repository location
	 */
	private String getDocumentRepositoryLocation()
	{
		return ResourceBundleUtils.getApplicationProperty("operator.documentRoot");
	}
}
