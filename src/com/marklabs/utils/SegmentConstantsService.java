package com.marklabs.utils;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * This class implements the methods required to access/modify the data in the
 * SEGMENT_CONSTANTS table
 * 
 * @author Tapan 
 * @version 1.0, 05/08/2010
 * 
 */

public class SegmentConstantsService extends HibernateDaoSupport implements ISegmentConstantsService{
	
	/**
	 * Returns the Blue Blood Constant value of the Segment Constant in the SEGMENT_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Segment Constant Name
	 *
	 * @return a <code>String</code> value.
	 * Returns <code>null</code> if no data is present or any error occurs.
	 */
	public String getBlueBloodConstByNameAndPeriod(String name, int period) {
		try {
			String queryString = "from SegmentConstants sc where " +
					"sc.name = '"+name+"' and sc.period = "+period;
			List segmentConstant = getHibernateTemplate().find(queryString);
			if (segmentConstant != null && segmentConstant.size()>0) {
				return ((SegmentConstants) segmentConstant.get(0)).getSegBlueBloods() + "";
			} else {
				logger.debug("SEGMENT_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}
	
	/**
	 * Returns the Raffles Constant value of the Segment Constant in the SEGMENT_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Segment Constant Name
	 *
	 * @return a <code>String</code> value.
	 * Returns <code>null</code> if no data is present or any error occurs.
	 */
	public String getRafflesConstByNameAndPeriod(String name, int period) {
		try {
			String queryString = "from SegmentConstants sc where " +
					"sc.name = '"+name+"' and sc.period = "+period;
			List segmentConstant = getHibernateTemplate().find(queryString);
			if (segmentConstant != null && segmentConstant.size()>0) {
				return ((SegmentConstants) segmentConstant.get(0)).getSegRaffles() + "";
			} else {
				logger.debug("SEGMENT_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}	
	
	/**
	 * Returns the Wannabes Constant value of the Segment Constant in the SEGMENT_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Segment Constant Name
	 *
	 * @return a <code>String</code> value.
	 * Returns <code>null</code> if no data is present or any error occurs.
	 */
	public String getWannabesConstByNameAndPeriod(String name, int period) {
		try {
			String queryString = "from SegmentConstants sc where " +
					"sc.name = '"+name+"' and sc.period = "+period;
			List segmentConstant = getHibernateTemplate().find(queryString);
			if (segmentConstant != null && segmentConstant.size()>0) {
				return ((SegmentConstants) segmentConstant.get(0)).getSegWannabes() + "";
			} else {
				logger.debug("SEGMENT_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}	
	
	/**
	 * Returns the Strugglers Constant value of the Segment Constant in the SEGMENT_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Segment Constant Name
	 *
	 * @return a <code>String</code> value.
	 * Returns <code>null</code> if no data is present or any error occurs.
	 */
	public String getStrugglersConstByNameAndPeriod(String name, int period) {
		try {
			String queryString = "from SegmentConstants sc where " +
					"sc.name = '"+name+"' and sc.period = "+period;
			List segmentConstant = getHibernateTemplate().find(queryString);
			if (segmentConstant != null && segmentConstant.size()>0) {
				return ((SegmentConstants) segmentConstant.get(0)).getSegStrugglers() + "";
			} else {
				logger.debug("SEGMENT_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}	
	
	/**
	 * Returns the Deprived Constant value of the Segment Constant in the SEGMENT_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Segment Constant Name
	 *
	 * @return a <code>String</code> value.
	 * Returns <code>null</code> if no data is present or any error occurs.
	 */
	public String getDeprivedConstByNameAndPeriod(String name, int period) {
		try {
			String queryString = "from SegmentConstants sc where " +
					"sc.name = '"+name+"' and sc.period = "+period;
			List segmentConstant = getHibernateTemplate().find(queryString);
			if (segmentConstant != null && segmentConstant.size()>0) {
				return ((SegmentConstants) segmentConstant.get(0)).getSegDeprived() + "";
			} else {
				logger.debug("SEGMENT_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}	

	public SegmentConstants getSegmentConstantByNameAndPeriod(String name, int period) {
		
		try {
			String queryString = "from SegmentConstants sc where " +
					"sc.name = '"+name+"' and sc.period = "+period;
			List segmentConstant = getHibernateTemplate().find(queryString);
			if (segmentConstant != null && segmentConstant.size()>0) {
				return ((SegmentConstants) segmentConstant.get(0));
			} else {
				logger.debug("SEGMENT_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}
	
}
