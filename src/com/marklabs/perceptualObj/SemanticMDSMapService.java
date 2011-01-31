package com.marklabs.perceptualObj;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

public class SemanticMDSMapService extends HibernateDaoSupport 
		implements ISemanticMDSMapService {
	
	/**
	 * Returns a {@link SemanticMDSMap} object for the MDS Dimension provided, 
	 *	for calculating the Intermediate MDS Values for Brands 
	 * 	
	 * @param mdsDimension
	 * @return
	 */
	public SemanticMDSMap getSemanticScalesForMDSDimension(String mdsDimension) {
		String queryString = "from SemanticMDSMap where MDSScale = '"+ mdsDimension + "'";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() >0)
			return (SemanticMDSMap) result.get(0);
		return null;
	}
	

}
