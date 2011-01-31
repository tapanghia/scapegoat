package com.marklabs.brandSpecifications;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

public class BrandSpecsMetadataService extends HibernateDaoSupport implements IBrandSpecsMetadataService {

	public BrandSpecsMetadata[] getAllBrandSpecsMetadata() {
		String queryString = "from BrandSpecsMetadata";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (BrandSpecsMetadata[]) result.toArray(new BrandSpecsMetadata[result.size()]);
		return null;
	}
	
	
	
}
