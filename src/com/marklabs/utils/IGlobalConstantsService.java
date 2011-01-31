package com.marklabs.utils;

import java.util.Map;

/**
 * An interface for accessing and manipulating
 * the data in the GLOBAL_CONSTANTS table
 * 
 * @author Tapan
 * @version 1.0, 05/08/2010
 */

public interface IGlobalConstantsService {

	/**
	 * Returns an array of GlobalConstants objects with all
	 * the global constants defined in the GLOBAL_CONSTANTS table 
	 *
	 * @return an array of GlobalConstants objects
	 * Returns an empty array if the table is empty or any error occurs.
	 */
	public GlobalConstants[] getAllGlobalConstants();

	/**
	 * Updates the value of the Global Constant in the GLOBAL_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  GlobalConstants object with the new value
	 *
	 * @return a <code>boolean</code> value indicating the success/failure
	 * in update.
	 */
	public boolean updateGlobalConstantValue(GlobalConstants globalConstants);
	
	/**
	 * Returns the value of the Global Constant in the GLOBAL_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Global Constant Name
	 *
	 * @return a <code>String</code> value.
	 */
	public String getValueByName(String Name);
	
	public Map getAllGlobalConstantsMap();
	public GlobalConstants getGlobalConstantByName(String name);
}
