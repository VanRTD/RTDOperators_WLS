/**
 * 
 */
package com.rtd.utils;

import java.util.Locale;
import java.util.ResourceBundle;

/**
 * @author Justin Hancock
 *
 * This utility class will be used to construct the appropriate messages
 * in their entirety by all Validators in the application.  It's sole purpose
 * is to fetch the message key String found in the resource bundle.
 */
public class ResourceBundleUtils
{
	
	public ResourceBundleUtils()
	{
		super();
	}
	
	// TODO: this should take a Locale argument for obvious reasons, 
	// but we don't have to worry about any i8ln just yet as there
	// are no requirements to do so at this time.
	/**
	 * @return returns the resourceBundle for looking up messages
	 */
	private static ResourceBundle getResourceBundle()
	{
		return ResourceBundle.getBundle("messages", Locale.US);
	}
	
	/**
	 * @param messageKey
	 * @return returns the message that is fetched by the key
	 */
	public static String getMessage(String messageKey)
	{
		String result = getResourceBundle().getString(messageKey);
		return result;
	}
	
	private static ResourceBundle getPropertiesFile()
	{
		return ResourceBundle.getBundle("application", Locale.US);
	}
	
	public static String getApplicationProperty(String aProperty)
	{
		return getPropertiesFile().getString(aProperty);
	}

}
