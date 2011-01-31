package com.marklabs.perceptualObj;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

public class SemanticValueService extends HibernateDaoSupport implements ISemanticValueService {

	public void saveISemanticScale(ISemanticValues semanticValue) {
		getHibernateTemplate().save(semanticValue);
	}
	
	public void saveFSemanticScale(FSemanticValues semanticValue) {
		getHibernateTemplate().save(semanticValue);
	}

	
}
