package com.marklabs.perceptualObj;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;

public class PerceptualObjService extends HibernateDaoSupport 
		implements IPerceptualObjService {

	public PerceptualObj getPerceptualObjInputForBrand(Brand brand) {
		
		String queryString = "from PerceptualObj po where po.brand = "+ brand.getId();
		List<PerceptualObj> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0) 
			return (PerceptualObj)result.get(0);
		return null;
	}

	@Override
	public void saveOrUpdatePerceptualObj(PerceptualObj perceptualObj) {
		getHibernateTemplate().saveOrUpdate(perceptualObj);
	}

	@Override
	public void savePerceptualObj(PerceptualObj perceptualObj) {
		getHibernateTemplate().save(perceptualObj);
		
	}
	
	
	
}
