package com.marklabs.brandAdvertisement;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;

public class BrandAdvertisementService extends HibernateDaoSupport implements IBrandAdvertisementService {

	public void saveBrandAdvertisement(BrandAdvertisement brandAdv) {
		getHibernateTemplate().save(brandAdv);
	}
	
	public void updateBrandAdvertisement(BrandAdvertisement brandAdv) {
		getHibernateTemplate().update(brandAdv);
	}

	public BrandAdvertisement getBrandAdvOnBrand(Brand brand) {
		if (brand != null) {
			String queryString = "from BrandAdvertisement ba where ba.brand = "+brand.getId();
			List<BrandAdvertisement> result = getHibernateTemplate().find(queryString);
			if (result != null && result.size() > 0)
				return result.get(0);
		}
		
		return null;
	}

	public void saveIAdvEffectiveSegmentExpense(
			IAdvEffSegExpense advEffSegExpense) {
		getHibernateTemplate().save(advEffSegExpense);
		
	}

	public void saveIAdvSegmentExpense(IAdvSegExpense advSegExpense) {
		getHibernateTemplate().save(advSegExpense);
		
	}
	
	public void saveIAdvBrandAwareness(IAdvBrandAwareness advBrandAwareness) {
		getHibernateTemplate().save(advBrandAwareness);
	}
	
	public IAdvBrandAwareness getBrandAwareness(Brand brand) {
		String queryString = "from IAdvBrandAwareness iadv where iadv.brand = "+ brand.getId();
		List result = getHibernateTemplate().find(queryString);
		
		if (result != null && result.size() > 0)
			return (IAdvBrandAwareness) result.get(0);
		
		return null;
	}
	
	public IAdvEffSegExpense getBrandAdvEffSegExpense(Brand brand) {
		String queryString = "from IAdvEffSegExpense iadv where iadv.brand = "+ brand.getId();
		List result = getHibernateTemplate().find(queryString);
		
		if (result != null && result.size() > 0)
			return (IAdvEffSegExpense) result.get(0);
		
		return null;
	}

	@Override
	public void deleteBrandAdvertisement(BrandAdvertisement brandAdv) {
		getHibernateTemplate().delete(brandAdv);
		
	}
}
