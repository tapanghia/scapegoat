package com.marklabs.perceptualObj;

import com.marklabs.brands.Brand;

public interface IPerceptualObjService {

	public PerceptualObj getPerceptualObjInputForBrand(Brand brand);
	
	public void saveOrUpdatePerceptualObj(PerceptualObj perceptualObj);
	
	public void savePerceptualObj(PerceptualObj perceptualObj);
	
}
