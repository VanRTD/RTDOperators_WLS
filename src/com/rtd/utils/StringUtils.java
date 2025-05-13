/**
 * 
 */
package com.rtd.utils;

/**
 * @author Justin Hancock
 *
 */
public class StringUtils
{

	/**
	 * 
	 */
	public StringUtils()
	{
		super();
	}
	
	public static boolean isNullOrEmpty(String aString)
	{
		boolean result = false;
		
		if (aString == null || aString.equalsIgnoreCase(""))
		{
			result = true;
		}
		
		return result;
	}

}
