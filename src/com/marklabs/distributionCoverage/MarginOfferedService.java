package com.marklabs.distributionCoverage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;

public class MarginOfferedService extends HibernateDaoSupport implements IMarginOfferedService {
	
	public void saveMarginOffered(MarginOffered marginOffered) {
		getHibernateTemplate().save(marginOffered);
	}
		
		
	public MarginOffered getMarginOfferedForBrand(Brand brand) {
		String queryString = "from MarginOffered mo where mo.brand = "+ brand.getId();
		List<MarginOffered> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0) 
			return result.get(0);
		return null;
	}


	@Override
	public AverageMarginOffered getAverageMarginOffered() {
		String queryString = "from AverageMarginOffered";
		List<AverageMarginOffered> averMarginOff = getHibernateTemplate().find(queryString);
		if (averMarginOff != null && averMarginOff.size() > 0 && averMarginOff.size() < 2)
			return averMarginOff.get(0);
		return null;
	}


	@Override
	public Map<Brand, MarginOffered> getMarginOfferedForBrands(
			List<Brand> brands) {
		Map<Brand, MarginOffered> marginOffForBrands = new HashMap<Brand, MarginOffered>();
		Iterator<Brand> brandItr = brands.iterator();
		while (brandItr.hasNext()) {
			Brand brand = (Brand) brandItr.next();
			MarginOffered thisBrandMarginOffered = getMarginOfferedForBrand(brand);
			marginOffForBrands.put(brand, thisBrandMarginOffered);
		}
		if (marginOffForBrands != null && marginOffForBrands.size() > 0)
			return marginOffForBrands;
		
		return null;
	}


	@Override
	public void saveOrUpdateMarginOffered(MarginOffered marginOffered) {
		getHibernateTemplate().saveOrUpdate(marginOffered);
		
	}


	@Override
	public void deleteMarginOffered(MarginOffered marginOffered) {
		getHibernateTemplate().delete(marginOffered);
		
	}



}
