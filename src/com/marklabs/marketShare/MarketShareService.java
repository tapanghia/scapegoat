package com.marklabs.marketShare;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

public class MarketShareService extends HibernateDaoSupport implements IMarketShareService {

	
	public void saveChannelAllocation(ChannelAllocation channelAllocation) {
		getHibernateTemplate().save(channelAllocation);
	}

	public void saveChannelAvailability(ChannelAvailability channelAvailability) {
		getHibernateTemplate().save(channelAvailability);
	}
	
	
	public void saveSuperMarketSegAvailability(SuperMarketSegAvailability smSegAvail) {
		getHibernateTemplate().save(smSegAvail);
	}
	
	public void saveGenStoreSegAvailability(GenStoreSegAvailability gsSegAvail) {
		getHibernateTemplate().save(gsSegAvail);
	}
	
	public void saveKiranaStoreSegAvailability(KiranaStoreSegAvailability ksSegAvail) {
		getHibernateTemplate().save(ksSegAvail);
	}
	

	public void saveSuperMarketSegMarketShare(SuperMarketSegMarketShare smSegMShare) {
		getHibernateTemplate().save(smSegMShare);
	}
	
	public void saveGenStoreSegMarketShare(GenStoreSegMarketShare gsSegMShare) {
		getHibernateTemplate().save(gsSegMShare);
	}
	
	public void saveKiranaStoreSegMarketShare(KiranaStoreSegMarketShare ksSegMShare) {
		getHibernateTemplate().save(ksSegMShare);
	}
	
}
