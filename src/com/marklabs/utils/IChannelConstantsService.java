package com.marklabs.utils;

public interface IChannelConstantsService {

	public String getSupermarketConstByNameAndPeriod(String name, int period);
	
	public String getGeneralStoreConstByNameAndPeriod(String name, int period);
	
	public String getKiranaStoreConstByNameAndPeriod(String name, int period);
	
	public ChannelConstants getChannelConstantByNameAndPeriod(String name, int period);
}
