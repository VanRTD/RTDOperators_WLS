/**
 * 
 */
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

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rtd.operator.model.BusRailOpProj;
import com.rtd.operator.web.BaseFormController;
import com.rtd.utils.ResourceBundleUtils;

/**
 * @author Van Tran
 */
public class BusRailOpProjController extends BaseFormController
{
	// set up logging
	private static final String CLASS_NAME = BusRailOpProjController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	public BusRailOpProjController()
	{
		super();
	}

	/**
	 * @param request
	 * @param response
	 * @return returns the busRailOpProj screen on a GET request
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		ModelAndView mav = new ModelAndView("BusRailOpProj");

		// Directory path here
		final String docDir = "OperatorMiscFile/RTDRelatedInfo/Bus_and_Rail_Operations_related_Projects";
		final String documentPath = getDocumentRepositoryLocation() + docDir;
		LOG.debug("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ = " + documentPath);
		List<BusRailOpProj> listFiles = new ArrayList<BusRailOpProj>();
		
		final File folder = new File(documentPath);
		final File[] listOfFiles = folder.listFiles();

		LOG.debug("LENGTH = " + listOfFiles.length);
		
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
				
				LOG.debug("ADD FILE = " + listOfFiles[i].getName());

				BusRailOpProj dc = new BusRailOpProj();

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
				listFiles.add(dc);
			}
		}

		mav.addObject("busRailOpProjFiles", listFiles);
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