package com.marklabs.utils;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * This class implements the methods required to access/modify the data in the
 * PERIOD_CONSTANTS table
 * 
 * @author Tapan 
 * @version 1.0, 05/08/2010
 * 
 */
public class PeriodConstantsService extends HibernateDaoSupport implements
IPeriodConstantsService {

	private static Logger logger = Logger
	.getLogger(PeriodConstantsService.class);

	
	/**
	 * Returns the value of the Period Constant in the PERIOD_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Period Constant Name
	 *
	 * @return a <code>String</code> value.
	 * Returns <code>null</code> if no data is present or any error occurs.
	 */
	public String getValueByNameAndPeriod(String name, int period) {
		try {
			String queryString = "select pc.value from PeriodConstants pc where pc.name = '"+name+"' and pc.period = "+period;
			List periodConstant = getHibernateTemplate().find(queryString);
			if (periodConstant != null && periodConstant.size()>0) {
				return (String) periodConstant.get(0);
			} else {
				logger.debug("PERIOD_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}
	
}
