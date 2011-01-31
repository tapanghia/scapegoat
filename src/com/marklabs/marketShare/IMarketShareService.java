package com.marklabs.marketShare;

public interface IMarketShareService {

	
	public void saveChannelAllocation(ChannelAllocation channelAllocation);
	
	public void saveChannelAvailability(ChannelAvailability channelAvailability);
	
	public void saveSuperMarketSegAvailability(SuperMarketSegAvailability smSegAvail);
	
	public void saveGenStoreSegAvailability(GenStoreSegAvailability gsSegAvail);
	
	public void saveKiranaStoreSegAvailability(KiranaStoreSegAvailability ksSegAvail);
	
	public void saveSuperMarketSegMarketShare(SuperMarketSegMarketShare smSegMShare);
	
	public void saveGenStoreSegMarketShare(GenStoreSegMarketShare gsSegMShare);
	
	public void saveKiranaStoreSegMarketShare(KiranaStoreSegMarketShare ksSegMShare);
	
}
