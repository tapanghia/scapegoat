package com.marklabs.purchaseIntention;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;
import com.marklabs.distributionCoverage.MarginOffered;

/**
 * This class is responsible for saving/retrieveing Purchase Intention (Brand)objects 
 * 		from Purchase Intention Table.
 * 
 * This class is also responsible for saving/retrieving Purchase Intention (Channel) objects
 * 		from PurchaseIntention_Channel Table.
 * 
 * @author Tapan
 * @date 05/22/2010
 */

public class PurchaseIntentionService extends HibernateDaoSupport implements IPurchaseIntentionService{

	public void saveBrandPurchaseIntention (PurchaseIntention fPurchaseIntention) {
		getHibernateTemplate().save(fPurchaseIntention);
	}
	
	public void saveChannelPurchaseIntention (PurchaseIntentionChannel fPurchaseIntention) {
		getHibernateTemplate().save(fPurchaseIntention);
	}
	
	public PurchaseIntentionChannel getPurchaseIntChannelForBrand(Brand brand) {
		
		String queryString = "from PurchaseIntentionChannel pic where pic.brand = "+ brand.getId();
		List<PurchaseIntentionChannel> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0) 
			return result.get(0);

		return null;
		
	}
	
	public PurchaseIntention getPurchaseIntSegForBrand(Brand brand) {
		
		String queryString = "from PurchaseIntention pi where pi.brand = "+ brand.getId();
		List<PurchaseIntention> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0) 
			return result.get(0);

		return null;
		
	}
	
}
