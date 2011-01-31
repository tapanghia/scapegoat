package com.marklabs.brandAdvertisement;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;

public class BrandAwarenessMetadataService extends HibernateDaoSupport 
		implements IBrandAwarenessMetadataService {

	public BrandAwarenessMetadata getBrandAwarenessMetadataForBrand(Brand brand) {
		String queryString = "from BrandAwarenessMetadata where brandName = '"+brand.getBrandName() + "'";
		List result = getHibernateTemplate().find(queryString);
		
		if (result != null && result.size() > 0)
			return (BrandAwarenessMetadata) result.get(0);
		return null;
	}
	
}
