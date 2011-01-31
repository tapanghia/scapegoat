package com.marklabs.purchaseIntention;

import com.marklabs.brands.Brand;

public interface IPurchaseIntentionService {

	public void saveBrandPurchaseIntention (PurchaseIntention fPurchaseIntention);
	
	public void saveChannelPurchaseIntention (PurchaseIntentionChannel fPurchaseIntention);

	public PurchaseIntentionChannel getPurchaseIntChannelForBrand(Brand brand);
	
	public PurchaseIntention getPurchaseIntSegForBrand(Brand brand);
}
