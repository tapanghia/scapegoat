package com.marklabs.distributionCoverage;

import com.marklabs.brands.Brand;

public interface IDistributionCoverageService {

	public void saveDistributionCoverage (DistributionCoverage distributionCoverage);
	
	public DistributionCoverage getDistributionCoverageForBrand(Brand brand);
}
