package com.marklabs.distributionCoverage;

import java.util.List;
import java.util.Map;

import com.marklabs.brands.Brand;

public interface IMarginOfferedService {

	public void saveMarginOffered(MarginOffered marginOffered);
	
	public MarginOffered getMarginOfferedForBrand(Brand brand);
	
	public AverageMarginOffered getAverageMarginOffered();
	
	public Map<Brand, MarginOffered> getMarginOfferedForBrands(List<Brand> brands);

	public void saveOrUpdateMarginOffered(MarginOffered marginOffered);
	
	public void deleteMarginOffered(MarginOffered marginOffered);
}

