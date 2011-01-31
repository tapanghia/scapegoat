package com.marklabs.researchProject;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.IBrandTransitionService;
import com.marklabs.teams.Team;
import com.marklabs.utils.GlobalConstants;
import com.marklabs.utils.GlobalConstantsService;
import com.marklabs.utils.IGlobalConstantsService;

public class ResearchProjectTransitionService extends HibernateDaoSupport 
	implements IResearchProjectTransitionService{

	IResearchProjectService researchProjectService;
	IGlobalConstantsService globalConstantsService;
	IBrandTransitionService brandTransitionService;
	
	/**
	 * @return the brandTransitionService
	 */
	public IBrandTransitionService getBrandTransitionService() {
		return brandTransitionService;
	}

	/**
	 * @param brandTransitionService the brandTransitionService to set
	 */
	public void setBrandTransitionService(
			IBrandTransitionService brandTransitionService) {
		this.brandTransitionService = brandTransitionService;
	}

	/**
	 * @return the globalConstantsService
	 */
	public IGlobalConstantsService getGlobalConstantsService() {
		return globalConstantsService;
	}


	/**
	 * @param globalConstantsService the globalConstantsService to set
	 */
	public void setGlobalConstantsService(
			IGlobalConstantsService globalConstantsService) {
		this.globalConstantsService = globalConstantsService;
	}


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


	public void transitionResearchProjectsForTeam(Team selectedTeam) {
		
		int inflationConst = 0;
		int currentPeriod = 0;
		ResearchProject[] researchProjects = researchProjectService.getResearchProjectsForTeamCurrentPeriod(selectedTeam);
		String inflationConstStr = globalConstantsService.getValueByName("INFLATION");
		if (inflationConstStr != null) {
			inflationConst = Integer.parseInt(inflationConstStr);
		}
		String currentPeriodStr = globalConstantsService.getValueByName("CURRENT_PERIOD");
		if (currentPeriodStr != null) {
			currentPeriod = Integer.parseInt(currentPeriodStr);
		}
				
		for (int i=0; i<researchProjects.length; i++) {
			long minimumBaseCost = 0, requestedBaseCost = 0, budgetDeficit = 0;
			long requiredBudgetAtMinBC = 0, requiredBudgetAtReqBC = 0;
			
			ResearchProject replicaResearchProj = new ResearchProject();
			replicaResearchProj.setProjectName(researchProjects[i].getProjectName());
			replicaResearchProj.setDesign(researchProjects[i].getDesign());
			replicaResearchProj.setFragrance(researchProjects[i].getFragrance());
			replicaResearchProj.setPackaging(researchProjects[i].getPackaging());
			replicaResearchProj.setPersistence(researchProjects[i].getPersistence());
			replicaResearchProj.setSafety(researchProjects[i].getSafety());
			
			minimumBaseCost = (researchProjects[i].getMinimumBaseCost() + 
					((researchProjects[i].getMinimumBaseCost()*inflationConst)/100));  
			replicaResearchProj.setMinimumBaseCost(minimumBaseCost);
			
			requestedBaseCost = (researchProjects[i].getRequestedBaseCost() + 
					((researchProjects[i].getRequestedBaseCost()*inflationConst)/100));
			replicaResearchProj.setRequestedBaseCost(requestedBaseCost);
			
			replicaResearchProj.setAllocatedBudget(researchProjects[i].getAllocatedBudget());
			replicaResearchProj.setCurrentPeriod(currentPeriod);
			replicaResearchProj.setIsAvailable(researchProjects[i].getIsAvailable());
			
			budgetDeficit = (researchProjects[i].getBudgetDeficit() + 
					((researchProjects[i].getBudgetDeficit()*inflationConst)/100));
			replicaResearchProj.setBudgetDeficit(budgetDeficit);
			
			replicaResearchProj.setProjectFinishPeriod(researchProjects[i].getProjectFinishPeriod());
			replicaResearchProj.setTeam(researchProjects[i].getTeam());
			
			requiredBudgetAtMinBC = (researchProjects[i].getRequiredBudgetAtMinBC() + 
					((researchProjects[i].getRequiredBudgetAtMinBC()*inflationConst)/100));
			replicaResearchProj.setRequiredBudgetAtMinBC(requiredBudgetAtMinBC);
			
			requiredBudgetAtReqBC = (researchProjects[i].getRequiredBudgetAtReqBC() + 
					((researchProjects[i].getRequiredBudgetAtReqBC()*inflationConst)/100));
			replicaResearchProj.setRequiredBudgetAtReqBC(requiredBudgetAtReqBC);

			researchProjectService.saveResearchProject(replicaResearchProj);
		
			/**
			 *  A replica of the research Project has been created for the next period.
			 *  Now we need to replicate the products from the previous period 
			 */
			
			brandTransitionService.transitionBrands(researchProjects[i], replicaResearchProj);
		
		}
	}

	
	
	
}
