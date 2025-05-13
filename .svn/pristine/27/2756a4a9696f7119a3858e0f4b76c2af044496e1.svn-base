/**
 * 
 */
package com.rtd.operator.service;

/**
 * @author Justin Hancock
 *
 */
import com.rtd.utils.StackTraceUtil;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

//import java.util.Base64;
//import Decoder.BASE64Encoder;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;





public final class HashingService
{
	private static HashingService instance;
	
	private static final Logger LOG = LogManager.getLogger(HashingService.class.getName());

	private HashingService()
	{
		super();
	}

	public synchronized String encrypt(String plaintext) throws Exception
	{
		//if (LOG.isDebugEnabled()) {
			//LOG.debug("encrypting:" + plaintext);
		//}
		
		MessageDigest md = null;
		try
		{
			md = MessageDigest.getInstance("SHA1"); // step 2
		} catch (NoSuchAlgorithmException e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
			throw new Exception(e.getMessage());
		}
		try
		{
			md.update(plaintext.getBytes("UTF-8")); // step 3
		} catch (UnsupportedEncodingException e)
		{
			LOG.error(StackTraceUtil.getStackTrace(e));
			throw new Exception(e.getMessage());
		}
		byte raw[] = md.digest(); // step 4
		//String hash = Base64.getEncoder().encodeToString(raw); // step 5 
		String hash = (new BASE64Encoder()).encode(raw); // step 5
		
		//if (LOG.isDebugEnabled()) {
			//LOG.debug("encrypted:" + hash);
		//}
		
		return hash; // step 6
	}

	public static synchronized HashingService getInstance() // step 1
	{
		if (instance == null)
		{
			return new HashingService();
		}
		else
		{
			return instance;
		}
	}
}