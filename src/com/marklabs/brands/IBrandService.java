package com.marklabs.brands;

import java.util.List;

import com.marklabs.teams.Team;

/**
 * @author Tapan
 * @date 04/25/2010
 */
public interface IBrandService {

	public void saveBrand(Brand brand);
	public Brand getBrandByBrandNameAndPeriod(String brandName, int period);
	public Brand[] getAllBrandsForPeriod (int period);
	
	public List<Brand> getAllBrandsForTeamCurrentPeriod(Team team, int period);
	public Brand getBrandOnNameAndPeriod(String brandName, int period);
	public Brand getBrandonId(long brandId);
	
	public void saveOrUpdateBrand(Brand brand);
	public void deleteBrandCascade(Brand brand);
	
}
