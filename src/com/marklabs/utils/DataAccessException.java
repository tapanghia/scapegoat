package com.marklabs.utils;
/**
 * File 		: DataAccessException.java
 * purpose		: 
 *  
 * Created on Jul 26, 2004
 *
 * Copyright (c) Openq 2005. All rights reserved Unauthorized reproduction
 * and/or distribution is strictly prohibited. 
 * description : 
 * author 	   : Tapan Ghia
 */
public class DataAccessException extends Exception {
	

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public DataAccessException(String pExceptionMsg) {
	super(pExceptionMsg);
}

public DataAccessException(String pExceptionMsg, Throwable pException) {
	super(pExceptionMsg, pException);
		
}


}