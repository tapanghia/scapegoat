package com.marklabs.utils;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * This class implements the methods required to access/modify the data in the
 * CHANNEL_CONSTANTS table
 * 
 * @author Tapan 
 * @version 1.0, 05/08/2010
 * 
 */

public class ChannelConstantsService extends HibernateDaoSupport implements IChannelConstantsService {


	
	/**
	 * Returns the Supermarket Constant value of the Channel Constant in the CHANNEL_CONSTANTS 
	 * 		table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Channel Constant Name
	 *
	 * @return a <code>String</code> value.
	 * Returns <code>null</code> if no data is present or any error occurs.
	 */
	public String getSupermarketConstByNameAndPeriod(String name, int period) {
		try {
			String queryString = "from ChannelConstants cc where " +
					"cc.constName = '"+name+"' and cc.period = "+period;
			List channelConstant = getHibernateTemplate().find(queryString);
			if (channelConstant != null && channelConstant.size()>0) {
				return ((ChannelConstants) channelConstant.get(0)).getSupermarket() + "";
			} else {
				logger.debug("CHANNEL_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}
	
	/**
	 * Returns the General Store Constant value of the Channel Constant in the CHANNEL_CONSTANTS
	 * 		table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Channel Constant Name
	 *
	 * @return a <code>String</code> value.
	 * Returns <code>null</code> if no data is present or any error occurs.
	 */
	public String getGeneralStoreConstByNameAndPeriod(String name, int period) {
		try {
			String queryString = "from ChannelConstants cc where " +
					"cc.constName = '"+name+"' and cc.period = "+period;
			List channelConstant = getHibernateTemplate().find(queryString);
			if (channelConstant != null && channelConstant.size()>0) {
				return ((ChannelConstants) channelConstant.get(0)).getGeneralStore() + "";
			} else {
				logger.debug("CHANNEL_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}	
	
	/**
	 * Returns the Kirana Store Constant value of the Channel Constant in the CHANNEL_CONSTANTS
	 * table for the name passed as parameter.
	 *
	 * @param  <code>String</code> Channel Constant Name
	 *
	 * @return a <code>String</code> value.
	 * Returns <code>null</code> if no data is present or any error occurs.
	 */
	public String getKiranaStoreConstByNameAndPeriod(String name, int period) {
		try {
			String queryString = "from ChannelConstants cc where " +
					"cc.constName = '"+name+"' and cc.period = "+period;
			List channelConstant = getHibernateTemplate().find(queryString);
			if (channelConstant != null && channelConstant.size()>0) {
				return ((ChannelConstants) channelConstant.get(0)).getKiranaStore() + "";
			} else {
				logger.debug("CHANNEL_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}	

	public ChannelConstants getChannelConstantByNameAndPeriod(String name, int period) {
		
		try {
			String queryString = "from ChannelConstants cc where " +
					"cc.name = '"+name+"' and cc.period = "+period;
			List<ChannelConstants> channelConstants = getHibernateTemplate().find(queryString);
			if (channelConstants != null && channelConstants.size()>0) {
				return ((ChannelConstants) channelConstants.get(0));
			} else {
				logger.debug("CHANNEL_CONSTANTS table is empty.");
				return null;
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
	}
	
	
}
