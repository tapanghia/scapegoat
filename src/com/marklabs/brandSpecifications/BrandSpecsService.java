package com.marklabs.brandSpecifications;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;

public class BrandSpecsService extends HibernateDaoSupport implements IBrandSpecsService{
	
	public void saveBrandSpecs(BrandSpecs brandSpec) {
		getHibernateTemplate().save(brandSpec);
		
	}

	public BrandSpecs getBrandSpecsOnBrand(Brand brand) {
		if (brand != null) {
		String queryString = "from BrandSpecs bs where bs.brand = " + brand.getId();
		List<BrandSpecs> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (BrandSpecs) result.get(0);
		}
		return null;
	}
	
	public BrandSpecs getBrandSpecsOnBrandId(long brandId) {
		
		String queryString = "from BrandSpecs bs where bs.brand = " + brandId;
		List<BrandSpecs> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (BrandSpecs) result.get(0);
		return null;
	}

	@Override
	public void updateBrandSpecs(BrandSpecs brandSpecs) {
		getHibernateTemplate().update(brandSpecs);
		
	}

	@Override
	public void deleteBrandSpecs(BrandSpecs brandSpecs) {
		getHibernateTemplate().delete(brandSpecs);
		
	}
	
	
	
}
