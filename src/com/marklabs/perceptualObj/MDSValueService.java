package com.marklabs.perceptualObj;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;

public class MDSValueService extends HibernateDaoSupport implements IMDSValueService {
	
	public void saveIMDSDimension(IMDSValues mdsValue) {
		getHibernateTemplate().save(mdsValue);
	}
	
	public void saveFMDSDimension(FMDSValues mdsValue) {
		getHibernateTemplate().save(mdsValue);
	}

	public FMDSValues getFMDSDimensionForBrand(Brand brand) {
		String queryString = "from FMDSValues where brand = " + brand.getId();
		List result = getHibernateTemplate().find(queryString);
		
		if (result != null && result.size() > 0)
			return (FMDSValues) result.get(0);
		
		return null;
	}
}
