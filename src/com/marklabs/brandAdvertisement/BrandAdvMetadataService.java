package com.marklabs.brandAdvertisement;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.researchProject.ResearchProjectMetadata;

public class BrandAdvMetadataService extends HibernateDaoSupport implements IBrandAdvMetadataService {

	public BrandAdvMetadata[] getAllBrandAdvMetadata() {
		String queryString = "from BrandAdvMetadata";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (BrandAdvMetadata[]) result.toArray(new BrandAdvMetadata[result.size()]);
		return null;
	}
	
}
