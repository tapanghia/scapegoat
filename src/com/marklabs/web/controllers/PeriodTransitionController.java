package com.marklabs.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.brandAdvertisement.IBrandAdvTransitionService;
import com.marklabs.distributionCoverage.IDistributionCoverageTransitionService;
import com.marklabs.marketShare.IMarketShareTransitionService;
import com.marklabs.perceptualObj.IPerceptualObjTransitionService;
import com.marklabs.prepareDataForPeriod0.IPrepareDataForPeriod0Service;
import com.marklabs.purchaseIntention.IPurchaseIntentionTransitionService;
import com.marklabs.researchProject.IResearchProjectTransitionService;
import com.marklabs.teams.ITeamService;
import com.marklabs.teams.Team;
import com.marklabs.utils.GlobalConstants;
import com.marklabs.utils.IGlobalConstantsService;

/**
 * @date 05/01/2010
 * @author Tapan
 *	
 *	The following functions needs to be performed when the Admin starts the course. 
 *		Data needs to be prepared for Period 0. 
 *	prepareDataForPeriod_0_ResearchProjects
 *	prepareDataForPeriod_0_Brands
 *	prepareDataForPeriod_0_MarkettingMix
 *	prepareDataForPeriod_0_SalesForce
 *	prepareDataForPeriod_0_MarketStudies
 *
 *	Now we have data prepared for Period 0 in the corresponding tables. All the client's side calculations have 
 *		also been performed on the data read as input from DB metadata tables. For Period 0, all the client side
 *		calculations are also performed on the server side.
 *
 *	Now the transition begins, to next Period. I have made this part of code generic, such that, this can 
 *		be used for all period transitions. (This involves some data copying to the new period 
 *		and some formulas applications)
 *	Each and every transition is explained below:
 *	
 *	transitionResearchProjects
 *		--
 *	transitionBrands
 *		--
 *	transitionMarkettingMix
 *		--
 *  	1. Production
 *		2. Pricing
 *		3. Advertisement
 *	 transitionSalesForce
 *		--
 *	 transitionMarketStudies
 *		--
 *
 *
 */

public class PeriodTransitionController extends MultiActionController{

	IPrepareDataForPeriod0Service prepareDataForPeriod0Service;
	ITeamService teamService;
	IResearchProjectTransitionService researchProjectTransitionService;
	IGlobalConstantsService globalConstantsService;
	IBrandAdvTransitionService brandAdvTransitionService;
	IPerceptualObjTransitionService perceptualObjTransitionService;
	IPurchaseIntentionTransitionService purchaseIntentionTransitionService;
	IDistributionCoverageTransitionService distributionCoverageTransitionService;
	IMarketShareTransitionService marketShareTransitionService;
	
	
	/**
	 * @return the marketShareTransitionService
	 */
	public IMarketShareTransitionService getMarketShareTransitionService() {
		return marketShareTransitionService;
	}

	/**
	 * @param marketShareTransitionService the marketShareTransitionService to set
	 */
	public void setMarketShareTransitionService(
			IMarketShareTransitionService marketShareTransitionService) {
		this.marketShareTransitionService = marketShareTransitionService;
	}

	/**
	 * @return the distributionCoverageTransitionService
	 */
	public IDistributionCoverageTransitionService getDistributionCoverageTransitionService() {
		return distributionCoverageTransitionService;
	}

	/**
	 * @param distributionCoverageTransitionService the distributionCoverageTransitionService to set
	 */
	public void setDistributionCoverageTransitionService(
			IDistributionCoverageTransitionService distributionCoverageTransitionService) {
		this.distributionCoverageTransitionService = distributionCoverageTransitionService;
	}

	/**
	 * @return the purchaseIntentionTransitionService
	 */
	public IPurchaseIntentionTransitionService getPurchaseIntentionTransitionService() {
		return purchaseIntentionTransitionService;
	}

	/**
	 * @param purchaseIntentionTransitionService the purchaseIntentionTransitionService to set
	 */
	public void setPurchaseIntentionTransitionService(
			IPurchaseIntentionTransitionService purchaseIntentionTransitionService) {
		this.purchaseIntentionTransitionService = purchaseIntentionTransitionService;
	}

	/**
	 * @return the perceptualObjTransitionService
	 */
	public IPerceptualObjTransitionService getPerceptualObjTransitionService() {
		return perceptualObjTransitionService;
	}

	/**
	 * @param perceptualObjTransitionService the perceptualObjTransitionService to set
	 */
	public void setPerceptualObjTransitionService(
			IPerceptualObjTransitionService perceptualObjTransitionService) {
		this.perceptualObjTransitionService = perceptualObjTransitionService;
	}

	/**
	 * @return the brandAdvTransitionService
	 */
	public IBrandAdvTransitionService getBrandAdvTransitionService() {
		return brandAdvTransitionService;
	}

	/**
	 * @param brandAdvTransitionService the brandAdvTransitionService to set
	 */
	public void setBrandAdvTransitionService(
			IBrandAdvTransitionService brandAdvTransitionService) {
		this.brandAdvTransitionService = brandAdvTransitionService;
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
	 * @return the researchProjectTransitionService
	 */
	public IResearchProjectTransitionService getResearchProjectTransitionService() {
		return researchProjectTransitionService;
	}

	/**
	 * @param researchProjectTransitionService the researchProjectTransitionService to set
	 */
	public void setResearchProjectTransitionService(
			IResearchProjectTransitionService researchProjectTransitionService) {
		this.researchProjectTransitionService = researchProjectTransitionService;
	}

	/**
	 * @return the prepareDataForPeriod0Service
	 */
	public IPrepareDataForPeriod0Service getPrepareDataForPeriod0Service() {
		return prepareDataForPeriod0Service;
	}

	/**
	 * @param prepareDataForPeriod0Service the prepareDataForPeriod0Service to set
	 */
	public void setPrepareDataForPeriod0Service(
			IPrepareDataForPeriod0Service prepareDataForPeriod0Service) {
		this.prepareDataForPeriod0Service = prepareDataForPeriod0Service;
	}

	/**
	 * @return the teamService
	 */
	public ITeamService getTeamService() {
		return teamService;
	}

	/**
	 * @param teamService the teamService to set
	 */
	public void setTeamService(ITeamService teamService) {
		this.teamService = teamService;
	}
	
	/**
	 * This function will be responsible for preparing data for Period 0 from the Metadata Tables.
	 * All the input fields on the UI of the application, will be provided as input from the metadata for 
	 * 	the period 0. (To start the game, before the transition from Period 0 to 1 is simulated by the game.)
	 * @param request
	 * @param response
	 * @return
	 */
	public ModelAndView prepareDataForPeroid0(HttpServletRequest request, HttpServletResponse response) {
		prepareDataForPeriod0Service.prepareDataForPeriod_0_ResearchProjects();
		prepareDataForPeriod0Service.prepareDataForPeriod_0_Brands();
		prepareDataForPeriod0Service.prepareDataForPeriod_0_Advertisements();
		prepareDataForPeriod0Service.prepareDataForPeriod_0_BrandSpecs();
		prepareDataForPeriod0Service.prepareDataForPeriod_0_SalesForce();
		prepareDataForPeriod0Service.prepareDataForPeriod_0_MarginOffered();
		
		return null;
	}

	
	
	/**
	 * This function will be called for every team, whenever a transition to next period is required.
	 * @param request
	 * @param response
	 * @return a ModelAndView Object
	 */
	
	public ModelAndView transitionToNextPeriod(HttpServletRequest request, HttpServletResponse response) {
		
		/**
		 * Transition to the next period for every Team involves the following steps:
		 * 1. Update the Global_Constants constant: CURRENT_PERIOD
		 * 2. Update the Team Object for the Current Period 
		 * 3. Add new rows to the Research Project Table. (Replicate the Research Projects of the previous 
		 * 		period, taking into consideration the INFLATION constant.)
		 * 4. For each Research Project, also replicate the Brands for the next Period. 
		 */
		
		//Updating Global Constants
		GlobalConstants currentPeriod = globalConstantsService.getGlobalConstantByName("CURRENT_PERIOD");
		if (currentPeriod!= null) {
			int nextPeriod = Integer.parseInt(currentPeriod.getValue()) + 1;
			currentPeriod.setValue(nextPeriod+"");
			globalConstantsService.updateGlobalConstantValue(currentPeriod);
			
			
			//-----------------------------------
			// Remove this, Added for testing
			request.getSession().setAttribute("CURRENT_PERIOD", "0");
			// Remove this
			//------------------------------------
			
			// Fetching the selected team details, for which the transition is taking place.
			/*String teamIdString = request.getParameter("teamId");
			long teamId = Long.parseLong(teamIdString);
			Team selectedTeam = teamService.getTeamOnTeamId(teamId);
			*/
			
			Team[] allTeams = teamService.getAllTeams();
			if (allTeams != null && allTeams.length > 0 ){
				
				for (int i = 0; i< allTeams.length; i++ ){
							
					/**
					 * Facilitating the ResearchProject transition for all Teams
					 * This function will also be responsible for replicating the Brands in the previous 
					 * period for the next period.
					 * 
					 */
					researchProjectTransitionService.transitionResearchProjectsForTeam(allTeams[i]);
					
					/**
					 * Facilitating the calculations required for the Brand Advertisement Expenses, 
					 *  Effective Expenses and Brand Awareness
					 */
					brandAdvTransitionService.transitionBrandAdvForTeam(allTeams[i], 
							(String)request.getSession().getAttribute("CURRENT_PERIOD"));
					
					/**
					 * Facilitating the transition of Perceptual Objectives.
					 * For Period 0: No input(perceptual Objectives or MDS Dimensions) 
					 * 	is considered for the calculations of Intermediate/Final Semantic Values and 
					 * 	Intermediate/Final MDS Values 
					 */
					perceptualObjTransitionService.transitionPerceptualObjForTeam(allTeams[i], 
							(String)request.getSession().getAttribute("CURRENT_PERIOD"));
					
					/**
					 * Calculating and saving the Purchase Intentions 	
					 * This calculates SalesPurchaseIntention and ChannelPurchaseIntention
					 * ChannelPurchaseIntention yet to be calculated
					 * 
					 * 
					 */
					purchaseIntentionTransitionService.transitionPurchaseIntentionForTeam(allTeams[i], 
							(String)request.getSession().getAttribute("CURRENT_PERIOD"));
					
					
					//Transition for Distribution Coverage (Sales Force and Margin Offered) here
					distributionCoverageTransitionService.
						transitionDistributionCoverageForTeam(allTeams[i], 
								(String)request.getSession().getAttribute("CURRENT_PERIOD"));
					
					
					/**
					 *  Transition for Channel Allocation, Channel Availability, Segment Availability,
					 *  	Channel Market Share, Segment Market Share
					 */
					
					
					
					
					
					// Updating the Team Object for the Current Period
					allTeams[i].setCurrentTeamPeriod(nextPeriod);
					teamService.updateTeam(allTeams[i]);
					
				}
			}
			
			/**
			 * Once all the transition is complete, delete the CURRENT_PERIOD from the session and
			 * 	add the Global Constants current period value in the CURRENT_PERIOD session variable. 
			 */
			if (request.getSession().getAttribute("CURRENT_PERIOD") != null)
				request.getSession().removeAttribute("CURRENT_PERIOD");
			request.getSession().setAttribute("CURRENT_PERIOD", 
					globalConstantsService.getValueByName("CURRENT_PERIOD"));
		}
		return null;
	}
	
}
