package com.marklabs.utils;

public interface ISegmentConstantsService {

	public String getBlueBloodConstByNameAndPeriod(String name, int period);
	
	public String getRafflesConstByNameAndPeriod(String name, int period);
	
	public String getWannabesConstByNameAndPeriod(String name, int period);
	
	public String getStrugglersConstByNameAndPeriod(String name, int period);
	
	public String getDeprivedConstByNameAndPeriod(String name, int period);
	
	public SegmentConstants getSegmentConstantByNameAndPeriod(String name, int period);
}
