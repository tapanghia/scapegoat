package com.marklabs.perceptualObj;

import com.marklabs.brands.Brand;

public interface IMDSValueService {

	public void saveIMDSDimension(IMDSValues mdsValue);
	public void saveFMDSDimension(FMDSValues mdsValue);
	public FMDSValues getFMDSDimensionForBrand(Brand brand);
}
