package com.marklabs.distributionCoverage;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;

public class DistributionCoverageService extends HibernateDaoSupport implements
		IDistributionCoverageService {

	public void saveDistributionCoverage (DistributionCoverage distributionCoverage) {
		getHibernateTemplate().save(distributionCoverage);
	}
	
	public DistributionCoverage getDistributionCoverageForBrand(Brand brand) {
		String queryString = "from DistributionCoverage where brand = "+ brand.getId();
		
		List<DistributionCoverage> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return result.get(0);
		return null;
	}
}
