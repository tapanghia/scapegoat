package com.marklabs.distributionCoverage;

import java.util.List;
import java.util.Map;

import com.marklabs.brands.Brand;

public interface ISalesForceService {

	public void saveSalesForce(SalesForce salesForce);
	
	public SalesForce getSalesForceForBrand(Brand brand);
	
	public Map<Brand, SalesForce> getSalesForceForBrands(List<Brand> brandList);
	
	public void saveOrUpdateSalesForce(SalesForce salesForce);
	
	public void deleteSalesForce(SalesForce salesForce);
}
