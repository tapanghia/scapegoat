package com.marklabs.brands;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.teams.Team;

/**
 * @date 04/25/2010
 * @author Tapan
 *
 */
public class BrandService extends HibernateDaoSupport implements IBrandService{

	
	public void saveBrand(Brand brand) {
		getHibernateTemplate().save(brand);
	}

	public Brand getBrandByBrandNameAndPeriod(String brandName, int period) {
		
		String queryString = "from Brands where brandName = '"+ brandName + "' and period = " + period;
		List result = getHibernateTemplate().find(queryString);
		
		if (result != null && result.size() > 0)
			return (Brand) result.get(0);
		
		return null;
	}

	public Brand[] getAllBrandsForPeriod (int period) {
		
		String queryString = "from Brands where period = "+ period;
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (Brand[]) result.toArray(new Brand[result.size()]);
		
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public List<Brand> getAllBrandsForTeamCurrentPeriod(Team team, int period) {
		
		String queryString = "from Brand br where br.researchProject.currentPeriod = "
			+ period + " and br.researchProject.team.id = "+ team.getId();
		
		List<Brand> result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return result;
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public Brand getBrandOnNameAndPeriod(String brandName, int period) {
		String queryString = "from Brand br where br.brandName like '"+brandName+"' and period = "+period;
		List<Brand> brandResult = getHibernateTemplate().find(queryString);
		
		if (brandResult != null && brandResult.size() > 0)
			return brandResult.get(0);
		return null;
	}
	
	public Brand getBrandonId(long brandId) {
		String queryString = "from Brand br where br.id = "+brandId ;
		List<Brand> brandResult = getHibernateTemplate().find(queryString);
		
		if (brandResult != null && brandResult.size() > 0)
			return brandResult.get(0);
		return null;
	}

	@Override
	public void saveOrUpdateBrand(Brand brand) {
		getHibernateTemplate().saveOrUpdate(brand);
		
	}

	@Override
	public void deleteBrandCascade(Brand brand) {
		getHibernateTemplate().delete(brand);
	}
	
	
}
