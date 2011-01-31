package com.marklabs.purchaseIntention;

public interface IPurchaseIntentionConstantService {

	public MDSSegmentRelativeImp getMDSSegmentRelativeImp(String segment, int period);
	public MDSSegmentIdealValueMap getMDSSegmentIdealValueMap(String segment, int period);
	public SemanticSegmentIdealValueMap getSegmentIdealValueMap(String segment, int period);
	
}
