package com.marklabs.distributionCoverage;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

public class SalesForceMetadataService extends HibernateDaoSupport implements ISalesForceMetadataService {

	
	@SuppressWarnings("unchecked")
	public SalesForceMetadata[] getAllSalesForceMetadata() {
		String queryString = "from SalesForceMetadata";
		List<SalesForceMetadata> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (SalesForceMetadata[]) result.toArray(new SalesForceMetadata[result.size()]);
		return null;
	}
	
}
