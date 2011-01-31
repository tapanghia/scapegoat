package com.marklabs.researchProject;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.teams.Team;

public class ResearchProjectMetadataService extends HibernateDaoSupport 
	implements IResearchProjectMetadataService {

	IResearchProjectService researchProjectService;
	
	/**
	 * @return the researchProjectService
	 */
	public IResearchProjectService getResearchProjectService() {
		return researchProjectService;
	}

	/**
	 * @param researchProjectService the researchProjectService to set
	 */
	public void setResearchProjectService(
			IResearchProjectService researchProjectService) {
		this.researchProjectService = researchProjectService;
	}

	
	/**
	 * 
	 */
	public ResearchProjectMetadata[] getAllResearchProjMetadata() {
		String queryString = "from ResearchProjectMetadata";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (ResearchProjectMetadata[]) result.toArray(new ResearchProjectMetadata[result.size()]);
		return null;
	}

	/**
	 * 
	 */
	public ResearchProjectMetadata[] getResearchProjMetadataForTeamName() {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 
	 */
	public long getActualBaseCost(ResearchProjectMetadata researchProjMetadata, Team team) {
		return 0;
	}

	/**
	 * 
	 */
	public long getMinimumBaseCost(ResearchProjectMetadata researchProjMetadata) {
		long minimumBaseCost = 0;
		double design = 0, fragrance =0, persistence = 0, packaging = 0, safety = 0;
		
		if (researchProjMetadata != null) {
			design = (ResearchProjectConstants.DESIGN_CONSTANT_1 - ResearchProjectConstants.DESIGN_CONSTANT_2) * 
					(researchProjMetadata.getDesign()/99) + ResearchProjectConstants.DESIGN_CONSTANT_2;
			fragrance = (ResearchProjectConstants.FRAGRANCE_CONSTANT_1 - ResearchProjectConstants.FRAGRANCE_CONSTANT_2) * 
					(researchProjMetadata.getFragrance()/99) + ResearchProjectConstants.FRAGRANCE_CONSTANT_2;
			persistence = (ResearchProjectConstants.PERSISTENCE_CONSTANT_1 - ResearchProjectConstants.PERSISTENCE_CONSTANT_2) * 
					(researchProjMetadata.getPersistence()/99) + ResearchProjectConstants.PERSISTENCE_CONSTANT_2;
			packaging = (ResearchProjectConstants.PACKAGING_CONSTANT_1 - ResearchProjectConstants.PACKAGING_CONSTANT_2) * 
					(researchProjMetadata.getPackaging()/99) + ResearchProjectConstants.PACKAGING_CONSTANT_2;
			safety = (ResearchProjectConstants.SAFETY_CONSTANT_1 - ResearchProjectConstants.SAFETY_CONSTANT_2) * 
					(researchProjMetadata.getSafety()/99) + ResearchProjectConstants.SAFETY_CONSTANT_2;
		}
		
		minimumBaseCost = Math.round(design + fragrance + persistence + packaging + safety);
		
		return minimumBaseCost;
	}

	public long getRequiredBudgetAtMinBaseCost(long minimumBaseCost) {
		double reqBudgetAtMinBC = 0;
		double minimumBaseCost_doub = minimumBaseCost;
		reqBudgetAtMinBC = 
			ResearchProjectConstants.BUDGET_REQUIRED_ON_MIN_BASECOST_CONST1 + 
			(minimumBaseCost_doub * ResearchProjectConstants.BUDGET_REQUIRED_ON_MIN_BASECOST_CONST2);
		
		return Math.round(reqBudgetAtMinBC);
	}

	public long getRequiredBudgetAtReqBaseCost(long requestedBaseCost, long minimumBaseCost, 
			long requiredBudgetAtMinBaseCost) {
		
		double reqBudgetAtReqBC = 0;
		double minimumBaseCost_doub = minimumBaseCost;
		double requestedBaseCost_doub = requestedBaseCost;
		double requiredBudgetAtMinBaseCost_doub = requiredBudgetAtMinBaseCost;
		reqBudgetAtReqBC = requiredBudgetAtMinBaseCost_doub * (ResearchProjectConstants.BUDGET_REQUIRED_ON_REQUESTED_BASECOST_CONST1  + 
				(ResearchProjectConstants.BUDGET_REQUIRED_ON_REQUESTED_BASECOST_CONST1/(Math.pow((1 + Math.pow(((requestedBaseCost_doub - minimumBaseCost_doub)/300), 
						ResearchProjectConstants.BUDGET_REQUIRED_ON_REQUESTED_BASECOST_CONST2)), 
						ResearchProjectConstants.BUDGET_REQUIRED_ON_REQUESTED_BASECOST_CONST3))));
		
		return Math.round(reqBudgetAtReqBC);
	}



}
