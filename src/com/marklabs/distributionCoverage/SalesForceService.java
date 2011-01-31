package com.marklabs.distributionCoverage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;

public class SalesForceService extends HibernateDaoSupport implements ISalesForceService {

	public void saveSalesForce(SalesForce salesForce) {
		getHibernateTemplate().save(salesForce);
	}

	public SalesForce getSalesForceForBrand(Brand brand) {
		
		String queryString = "from SalesForce sf where sf.brand = "+ brand.getId();
		List<SalesForce> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0) 
			return result.get(0);
		return null;
		
	}

	@Override
	public Map<Brand, SalesForce> getSalesForceForBrands(List<Brand> brandList) {
		
		Map<Brand, SalesForce> brandSalesForceMap = new HashMap<Brand, SalesForce>();
		
		Iterator<Brand> brandItr = brandList.iterator();
		while (brandItr.hasNext()) {
			Brand brand = (Brand) brandItr.next();
			System.out.println("Bramd in brandlist: "+brand.getId());
			SalesForce thisBrandSalesForce = getSalesForceForBrand(brand);
			brandSalesForceMap.put(brand, thisBrandSalesForce);
		}
		
		if (brandSalesForceMap != null && brandSalesForceMap.size() > 0)
			return brandSalesForceMap;
		
		return null;
	}

	@Override
	public void saveOrUpdateSalesForce(SalesForce salesForce) {
		getHibernateTemplate().saveOrUpdate(salesForce);
		
	}

	@Override
	public void deleteSalesForce(SalesForce salesForce) {
		getHibernateTemplate().delete(salesForce);
		
	}
	
	
	
	
	
}
