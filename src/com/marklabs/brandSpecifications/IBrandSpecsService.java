package com.marklabs.brandSpecifications;

import com.marklabs.brands.Brand;

public interface IBrandSpecsService {
	
	public void saveBrandSpecs(BrandSpecs brandSpec);
	
	public BrandSpecs getBrandSpecsOnBrand(Brand brand);
	
	public BrandSpecs getBrandSpecsOnBrandId(long brandId);
	
	public void updateBrandSpecs(BrandSpecs brandSpecs);
	
	public void deleteBrandSpecs(BrandSpecs brandSpecs);
}
