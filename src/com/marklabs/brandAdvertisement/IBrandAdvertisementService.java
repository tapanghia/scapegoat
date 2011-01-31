package com.marklabs.brandAdvertisement;

import com.marklabs.brands.Brand;

public interface IBrandAdvertisementService {
	
	
	/**
	 * To Save brandAdvertisement object
	 * @param brandAdv
	 */
	public void saveBrandAdvertisement(BrandAdvertisement brandAdv);
	
	/**
	 * This function returns a Brand Advertisement object provided the BrandID.
	 * Each BrandID has will have only 1 Brand Advertisement Object assigned to it.
	 * @param brandId
	 * @return
	 */
	public BrandAdvertisement getBrandAdvOnBrand(Brand brand);
	
	/**
	 * This function will save Intermediate Advertisement Segment Expense Object
	 * @param advSegExpense
	 */
	public void saveIAdvSegmentExpense(IAdvSegExpense advSegExpense);
	
	/**
	 * This function will save Intermediate Advertisement Effective Segment Expense Object
	 * @param advSegExpense
	 */
	public void saveIAdvEffectiveSegmentExpense(IAdvEffSegExpense advEffSegExpense);
	
	/**
	 * This function will save Intermediate Advertisement Brand/Segment based Brand Awareness.
	 * @param advBrandAwareness
	 */
	public void saveIAdvBrandAwareness(IAdvBrandAwareness advBrandAwareness);
	
	/**
	 * 
	 * @param brand for which Brand Awareness Object is to be retrieved
	 * @return IAdvBrandAwareness Object for the Brand received as a parameter to this function.
	 */
	public IAdvBrandAwareness getBrandAwareness(Brand brand);
	
	/**
	 * 
	 * @param brand for which Brand Advertisement Effective Segment Expense Object is to be retrieved
	 * @return IAdvSegExpense Object for the Brand received as a parameter to this function.
	 */
	public IAdvEffSegExpense getBrandAdvEffSegExpense(Brand brand);
	
	public void updateBrandAdvertisement(BrandAdvertisement brandAdv);

	public void deleteBrandAdvertisement(BrandAdvertisement brandAdv);
	
	
}
