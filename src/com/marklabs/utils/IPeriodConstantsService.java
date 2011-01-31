package com.marklabs.utils;

import java.util.Map;

/**
 * An interface for accessing and manipulating
 * the data in the GLOBAL_CONSTANTS table
 * 
 * @author Tapan
 * @version 1.0, 05/08/2010
 */

public interface IPeriodConstantsService {

		
	/**
	 * Returns the value of the Global Constant in the GLOBAL_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Global Constant Name
	 *
	 * @return a <code>String</code> value.
	 */
	public String getValueByNameAndPeriod(String name, int period);
	
}
