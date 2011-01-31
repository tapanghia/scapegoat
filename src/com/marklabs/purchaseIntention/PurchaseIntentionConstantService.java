package com.marklabs.purchaseIntention;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * This class is responsible for reading constants from :
 * 		semantic_segment_idealvaluemap
 * 		mds_segment_idealvaluemap
 * 		mds_segment_relativeImp
 * 
 * @author Tapan
 *
 */

public class PurchaseIntentionConstantService extends HibernateDaoSupport 
	implements IPurchaseIntentionConstantService {

	public MDSSegmentRelativeImp getMDSSegmentRelativeImp(String segment, int period) {
		String queryString = "from MDSSegmentRelativeImp where segment = '" + segment + "' " +
				"and period = " + period;
		
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (MDSSegmentRelativeImp) result.get(0);
		
		return null;
	}
	
	public MDSSegmentIdealValueMap getMDSSegmentIdealValueMap(String segment, int period) {
		String queryString = "from MDSSegmentIdealValueMap where segment = '" + segment + "' " +
				"and period = " + period;
		
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (MDSSegmentIdealValueMap) result.get(0);
		
		return null;
	}
	
	
	public SemanticSegmentIdealValueMap getSegmentIdealValueMap(String segment, int period) {
		String queryString = "from SemanticSegmentIdealValueMap where segment = '" + segment + "' " +
		"and period = " + period;

		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (SemanticSegmentIdealValueMap) result.get(0);
		
		return null;
		
	}
}
