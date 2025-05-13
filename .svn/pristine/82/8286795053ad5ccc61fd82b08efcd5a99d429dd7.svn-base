/**
 * 
 */
package com.rtd.operator.web.secure;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.activation.MimetypesFileTypeMap;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rtd.operator.web.BaseFormController;
import com.rtd.utils.ResourceBundleUtils;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


/**
 * @author Justin Hancock
 * 
 */
public class FetchDocumentController extends BaseFormController
{
	private static final String CLASS_NAME = FetchDocumentController.class.getName();
	private static final Logger LOG = LogManager.getLogger(CLASS_NAME);

	/**
	 * 
	 */
	public FetchDocumentController()
	{
		super();
	}

	@RequestMapping(method = RequestMethod.GET)
	public void handleRequest(final HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		final String fileName = request.getParameter("docName");
		final String documentPath = getDocumentRepositoryLocation() + fileName;

		if (fileName == null)
		{
			throw new ServletException("Filename == null");
		}
		else
		{
			final File requestedFile = new File(documentPath);
			final DataInputStream inputStream = new DataInputStream(new FileInputStream(requestedFile));

			if (inputStream == null)
			{
				throw new IOException("file not found");
			}
			else
			{
				int length = 0;
				final ServletOutputStream outputStream = response.getOutputStream();

				final String mimeType = new MimetypesFileTypeMap().getContentType(requestedFile);
				response.setContentType((mimeType == null) ? "application/octet-stream" : mimeType);
				response.setContentLength((int) requestedFile.length());
				response.setHeader("Content-Disposition","attachment; filename=\"" + fileName + "\"");

				//
				// Stream to the requester.
				//
				final byte[] bbuf = new byte[100];

				while ((inputStream != null) && ((length = inputStream.read(bbuf)) != -1))
				{
					outputStream.write(bbuf, 0, length);
				}

				inputStream.close();
				outputStream.flush();
				outputStream.close();
			}
		}
	}

	/**
	 * @return returns the doc repository location
	 */
	private String getDocumentRepositoryLocation()
	{
		return ResourceBundleUtils.getApplicationProperty("operator.documentRoot");
	}

}
