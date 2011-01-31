package com.marklabs.distributionCoverage;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

public class MarginOfferedMetadataService extends HibernateDaoSupport 
	implements IMarginOfferedMetadataService {

	@SuppressWarnings("unchecked")
	public MarginOfferedMetadata[] getAllMarginOfferedMetadata() {
		String queryString = "from MarginOfferedMetadata";
		List<MarginOfferedMetadata> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (MarginOfferedMetadata[]) result.toArray(new MarginOfferedMetadata[result.size()]);
		return null;
	}
	
	
}
