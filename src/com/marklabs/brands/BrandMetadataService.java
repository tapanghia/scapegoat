package com.marklabs.brands;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.researchProject.ResearchProjectMetadata;

public class BrandMetadataService extends HibernateDaoSupport implements IBrandMetadataService {

	public BrandMetadata[] getAllBrandMetadata() {
		String queryString = "from BrandMetadata";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (BrandMetadata[]) result.toArray(new BrandMetadata[result.size()]);
		return null;
	}

}
