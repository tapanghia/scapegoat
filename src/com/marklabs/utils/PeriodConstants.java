package com.marklabs.utils;

import java.io.Serializable;

/**
 * The <code>GlobalConstants</code> class represents the Global Constants
 * defined in the GLOBAL_CONSTANTS table. All system wide constants
 * for example, KOL_SPENDING_CAP are implemented as instances of this class.
 *
 * @author  Tapan
 * @version 1.0, 05/08/2010
 */

public class PeriodConstants implements Serializable {

	private int id;
	private int period;
	private String name;
	private String value;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	/**
	 * @return the period
	 */
	public int getPeriod() {
		return period;
	}

	/**
	 * @param period the period to set
	 */
	public void setPeriod(int period) {
		this.period = period;
	}

	
}
