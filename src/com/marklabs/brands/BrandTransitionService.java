package com.marklabs.brands;

import java.util.Iterator;
import java.util.Set;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.researchProject.ResearchProject;

public class BrandTransitionService extends HibernateDaoSupport implements IBrandTransitionService {

	IBrandService brandService;
	/**
	 * @return the brandService
	 */
	public IBrandService getBrandService() {
		return brandService;
	}

	/**
	 * @param brandService the brandService to set
	 */
	public void setBrandService(IBrandService brandService) {
		this.brandService = brandService;
	}


	public void transitionBrands(ResearchProject oldResearchProject, ResearchProject newResearchProject) {
		
		Set brands = oldResearchProject.getBrands();
		Iterator itr = brands.iterator();
		while (itr.hasNext()) {
			Brand brand = (Brand) itr.next();
			
			Brand replicaBrand = new Brand();
			replicaBrand.setBrandName(brand.getBrandName());
			replicaBrand.setDeleteFlag(brand.getDeleteFlag());
			if (brand.getStatus().equalsIgnoreCase("New"))
				replicaBrand.setStatus("Maintained");
			else
				replicaBrand.setStatus(brand.getStatus());
		
			replicaBrand.setResearchProject(newResearchProject);
			replicaBrand.setPeriod(newResearchProject.getCurrentPeriod());
			brandService.saveBrand(replicaBrand);
			
		}
		
	}

}
