package com.marklabs.prepareDataForPeriod0;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brandAdvertisement.BrandAdvMetadata;
import com.marklabs.brandAdvertisement.BrandAdvertisement;
import com.marklabs.brandAdvertisement.IBrandAdvMetadataService;
import com.marklabs.brandAdvertisement.IBrandAdvertisementService;
import com.marklabs.brandSpecifications.BrandSpecs;
import com.marklabs.brandSpecifications.BrandSpecsConstants;
import com.marklabs.brandSpecifications.BrandSpecsMetadata;
import com.marklabs.brandSpecifications.IBrandSpecsMetadataService;
import com.marklabs.brandSpecifications.IBrandSpecsService;
import com.marklabs.brands.Brand;
import com.marklabs.brands.BrandMetadata;
import com.marklabs.brands.IBrandMetadataService;
import com.marklabs.distributionCoverage.IMarginOfferedMetadataService;
import com.marklabs.distributionCoverage.IMarginOfferedService;
import com.marklabs.distributionCoverage.ISalesForceMetadataService;
import com.marklabs.distributionCoverage.ISalesForceService;
import com.marklabs.distributionCoverage.MarginOffered;
import com.marklabs.distributionCoverage.MarginOfferedMetadata;
import com.marklabs.distributionCoverage.SalesForce;
import com.marklabs.distributionCoverage.SalesForceMetadata;
import com.marklabs.researchProject.IResearchProjectMetadataService;
import com.marklabs.researchProject.IResearchProjectService;
import com.marklabs.researchProject.ResearchProject;
import com.marklabs.researchProject.ResearchProjectMetadata;
import com.marklabs.teams.ITeamMetadataService;
import com.marklabs.teams.ITeamService;
import com.marklabs.teams.Team;

public class PrepareDataForPeriod0Service extends HibernateDaoSupport 
	implements IPrepareDataForPeriod0Service {

	ITeamMetadataService teamMetadataService;
	IBrandMetadataService brandMetadataService;
	IResearchProjectMetadataService researchProjectMetadataService;
	ITeamService teamService;
	IResearchProjectService researchProjectService;
	IBrandAdvMetadataService brandAdvMetadataService;
	IBrandAdvertisementService brandAdvertisementService;
	IBrandSpecsMetadataService brandSpecsMetadataService;
	IBrandSpecsService brandSpecsService;
	ISalesForceMetadataService salesForceMetadataService;
	ISalesForceService salesForceService;
	IMarginOfferedMetadataService marginOfferedMetadataService;
	IMarginOfferedService marginOfferedService;
	
	
	/**
	 * @return the salesForceMetadataService
	 */
	public ISalesForceMetadataService getSalesForceMetadataService() {
		return salesForceMetadataService;
	}

	/**
	 * @param salesForceMetadataService the salesForceMetadataService to set
	 */
	public void setSalesForceMetadataService(
			ISalesForceMetadataService salesForceMetadataService) {
		this.salesForceMetadataService = salesForceMetadataService;
	}

	/**
	 * @return the salesForceService
	 */
	public ISalesForceService getSalesForceService() {
		return salesForceService;
	}

	/**
	 * @param salesForceService the salesForceService to set
	 */
	public void setSalesForceService(ISalesForceService salesForceService) {
		this.salesForceService = salesForceService;
	}

	/**
	 * @return the marginOfferedMetadataService
	 */
	public IMarginOfferedMetadataService getMarginOfferedMetadataService() {
		return marginOfferedMetadataService;
	}

	/**
	 * @param marginOfferedMetadataService the marginOfferedMetadataService to set
	 */
	public void setMarginOfferedMetadataService(
			IMarginOfferedMetadataService marginOfferedMetadataService) {
		this.marginOfferedMetadataService = marginOfferedMetadataService;
	}

	/**
	 * @return the marginOfferedService
	 */
	public IMarginOfferedService getMarginOfferedService() {
		return marginOfferedService;
	}

	/**
	 * @param marginOfferedService the marginOfferedService to set
	 */
	public void setMarginOfferedService(IMarginOfferedService marginOfferedService) {
		this.marginOfferedService = marginOfferedService;
	}

	/**
	 * @return the brandSpecsMetadataService
	 */
	public IBrandSpecsMetadataService getBrandSpecsMetadataService() {
		return brandSpecsMetadataService;
	}

	/**
	 * @param brandSpecsMetadataService the brandSpecsMetadataService to set
	 */
	public void setBrandSpecsMetadataService(
			IBrandSpecsMetadataService brandSpecsMetadataService) {
		this.brandSpecsMetadataService = brandSpecsMetadataService;
	}

	/**
	 * @return the brandSpecsService
	 */
	public IBrandSpecsService getBrandSpecsService() {
		return brandSpecsService;
	}

	/**
	 * @param brandSpecsService the brandSpecsService to set
	 */
	public void setBrandSpecsService(IBrandSpecsService brandSpecsService) {
		this.brandSpecsService = brandSpecsService;
	}

	/**
	 * @return the brandAdvMetadataService
	 */
	public IBrandAdvMetadataService getBrandAdvMetadataService() {
		return brandAdvMetadataService;
	}

	/**
	 * @param brandAdvMetadataService the brandAdvMetadataService to set
	 */
	public void setBrandAdvMetadataService(
			IBrandAdvMetadataService brandAdvMetadataService) {
		this.brandAdvMetadataService = brandAdvMetadataService;
	}

	/**
	 * @return the brandAdvertisementService
	 */
	public IBrandAdvertisementService getBrandAdvertisementService() {
		return brandAdvertisementService;
	}

	/**
	 * @param brandAdvertisementService the brandAdvertisementService to set
	 */
	public void setBrandAdvertisementService(
			IBrandAdvertisementService brandAdvertisementService) {
		this.brandAdvertisementService = brandAdvertisementService;
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

	/**
	 * @return the teamMetadataService
	 */
	public ITeamMetadataService getTeamMetadataService() {
		return teamMetadataService;
	}

	/**
	 * @param teamMetadataService the teamMetadataService to set
	 */
	public void setTeamMetadataService(ITeamMetadataService teamMetadataService) {
		this.teamMetadataService = teamMetadataService;
	}

	/**
	 * @return the brandMetadataService
	 */
	public IBrandMetadataService getBrandMetadataService() {
		return brandMetadataService;
	}

	/**
	 * @param brandMetadataService the brandMetadataService to set
	 */
	public void setBrandMetadataService(IBrandMetadataService brandMetadataService) {
		this.brandMetadataService = brandMetadataService;
	}

	/**
	 * @return the researchProjectMetadataService
	 */
	public IResearchProjectMetadataService getResearchProjectMetadataService() {
		return researchProjectMetadataService;
	}

	/**
	 * @param researchProjectMetadataService the researchProjectMetadataService to set
	 */
	public void setResearchProjectMetadataService(
			IResearchProjectMetadataService researchProjectMetadataService) {
		this.researchProjectMetadataService = researchProjectMetadataService;
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

//------------------------------------------------------------------------------------------------------	
	// The data preparation for Period 0 starts here
	
	
	public void prepareDataForPeriod_0_ResearchProjects() {
		
		//Getting all teams
		Team[] teams = teamService.getAllTeams();
		ResearchProjectMetadata[] researchProjectsMD = 
			researchProjectMetadataService.getAllResearchProjMetadata();
		
		for (int i = 0; i < teams.length; i++ ){
			for (int j = 0; j < researchProjectsMD.length; j++) {
				if (researchProjectsMD[j].getTeamName().equalsIgnoreCase(teams[i].getTeamName())) {
					
					long minimumBaseCost = 0; 
					long actualBaseCost = 0; //actual base cost, is used to calculate the minimum budget required.
					//long requestedBaseCost = 0; Now reading the RequestedBaseCost from ResearchProject Metadata Table
					long requiredBudgetAtMinBaseCost = 0;
					long requiredBudgetAtReqBaseCost = 0;
					long allocatedBudget = 0;
					
					//Write functions to calculate the above mentioned variables in researchProjectMetadataService
					
					ResearchProject researchProj = new ResearchProject();
					researchProj.setProjectName(researchProjectsMD[j].getProjectName());
					researchProj.setDesign(researchProjectsMD[j].getDesign());
					researchProj.setFragrance(researchProjectsMD[j].getFragrance());
					researchProj.setPersistence(researchProjectsMD[j].getPersistence());
					researchProj.setPackaging(researchProjectsMD[j].getPackaging());
					researchProj.setSafety(researchProjectsMD[j].getSafety());
					researchProj.setTeam(teams[i]);
					researchProj.setCurrentPeriod(CURRENT_PERIOD);
					researchProj.setIsAvailable(IS_AVAILABLE);
					researchProj.setBudgetDeficit(BUDGET_DEFICIT);
					researchProj.setProjectFinishPeriod(PROJECT_FINISH_PERIOD);
					
					minimumBaseCost = researchProjectMetadataService.getMinimumBaseCost(researchProjectsMD[j]);
					//Actual Base calculations not required for Period 0
					//actualBaseCost = researchProjectMetadataService.getActualBaseCost(researchProjectsMD[i], teams[i]);
					
					// For Period 0, ActualBaseCost equals MinimumBaseCost
					// For other periods, actual base cost needs to be calculated.
					actualBaseCost = minimumBaseCost;
					
					requiredBudgetAtMinBaseCost = 
						researchProjectMetadataService.getRequiredBudgetAtMinBaseCost(actualBaseCost);
					
					requiredBudgetAtReqBaseCost = 
						researchProjectMetadataService.getRequiredBudgetAtReqBaseCost(researchProjectsMD[j].getRequestedBaseCost(), minimumBaseCost, requiredBudgetAtMinBaseCost);
					
					allocatedBudget = requiredBudgetAtReqBaseCost;
					
					researchProj.setMinimumBaseCost(minimumBaseCost);
					researchProj.setRequestedBaseCost(researchProjectsMD[j].getRequestedBaseCost());
					researchProj.setRequiredBudgetAtMinBC(requiredBudgetAtMinBaseCost);
					researchProj.setRequiredBudgetAtReqBC(requiredBudgetAtReqBaseCost);
					researchProj.setAllocatedBudget(allocatedBudget);
					getHibernateTemplate().save(researchProj);
				}
			}
		}
		
	}
	
	public void prepareDataForPeriod_0_Brands() {
		Team[] teams = teamService.getAllTeams();
		BrandMetadata[] brandMD = brandMetadataService.getAllBrandMetadata();
		for (int i = 0; i < teams.length ; i++){
			ResearchProject researchProj[] = researchProjectService.getResearchProjectsForTeamCurrentPeriod(teams[i]);
			if (researchProj != null && researchProj.length > 0) {
				for (int j = 0; j < researchProj.length ; j++) {
					for (int p = 0; p < brandMD.length; p++) {
						if (brandMD[p].getResearchProjectName().equalsIgnoreCase(researchProj[j].getProjectName())) {
							Brand brand = new Brand();
							brand.setBrandName(brandMD[p].getBrandName());
							brand.setDeleteFlag("N");
							brand.setResearchProject(researchProj[j]);
							brand.setStatus(BRAND_STATUS);
							brand.setPeriod(researchProj[j].getCurrentPeriod());
							getHibernateTemplate().save(brand);
						}
					}
				}
			}
		}
	}

	public void prepareDataForPeriod_0_Advertisements() {
		Team[] teams = teamService.getAllTeams();
		BrandAdvMetadata[] brandAdvMetadata = brandAdvMetadataService.getAllBrandAdvMetadata();
		for (int i = 0; i < teams.length ; i++){
			ResearchProject[] researchProjects = 
				researchProjectService.getResearchProjectsForTeamCurrentPeriod(teams[i]);
			
			for (int j = 0; j < researchProjects.length; j++) {
				List brandsList = new ArrayList(researchProjects[j].getBrands());
				Brand[] brands = (Brand[])brandsList.toArray(new Brand[brandsList.size()]);
				for (int p = 0; p < brands.length; p++) {
					for (int q = 0; q < brandAdvMetadata.length; q++) {
						if (brandAdvMetadata[q].getBrandName().equalsIgnoreCase(brands[p].getBrandName())) {
							BrandAdvertisement brandAdv = new BrandAdvertisement();
							brandAdv.setBrand(brands[p]);
							brandAdv.setAdvMediabudget(brandAdvMetadata[q].getAdvMediabudget());
							brandAdv.setAdvResearchBudget(brandAdvMetadata[q].getAdvResearchBudget());
							brandAdv.setSegBlueBloods(brandAdvMetadata[q].getSegBlueBloods());
							brandAdv.setSegRaffles(brandAdvMetadata[q].getSegRaffles());
							brandAdv.setSegWannabees(brandAdvMetadata[q].getSegWannabees());
							brandAdv.setSegStrugglers(brandAdvMetadata[q].getSegStrugglers());
							brandAdv.setSegDeprived(brandAdvMetadata[q].getSegDeprived());
							brandAdv.setMediumInternet(brandAdvMetadata[q].getMediumInternet());
							brandAdv.setMediumPrint(brandAdvMetadata[q].getMediumPrint());
							brandAdv.setMediumRadio(brandAdvMetadata[q].getMediumRadio());
							brandAdv.setMediumTelevision(brandAdvMetadata[q].getMediumTelevision());
							brandAdvertisementService.saveBrandAdvertisement(brandAdv);
							
							//getHibernateTemplate().save(brandAdv);
						}
					}
				}
			}
		}
	}
	
	public void prepareDataForPeriod_0_BrandSpecs() {
		
		Team[] teams = teamService.getAllTeams();
		BrandSpecsMetadata[] brandSpecsMetadata = brandSpecsMetadataService.getAllBrandSpecsMetadata();
		for (int i = 0; i < teams.length ; i++){
			ResearchProject[] researchProjects = researchProjectService.getResearchProjectsForTeamCurrentPeriod(teams[i]);
			for (int j = 0; j < researchProjects.length; j++) {
				List brandsList = new ArrayList(researchProjects[j].getBrands());
				Brand[] brands = (Brand[])brandsList.toArray(new Brand[brandsList.size()]);
				for (int p = 0; p < brands.length; p++) {
					for (int q = 0; q < brandSpecsMetadata.length; q++) {
						if (brandSpecsMetadata[q].getBrandName().equalsIgnoreCase(brands[p].getBrandName())) {
							BrandSpecs brandSpecs = new BrandSpecs();
							brandSpecs.setBrand(brands[p]);
							brandSpecs.setCurrentInventory(BrandSpecsConstants.DEFAULT_CURRENTINVENTORY);
							brandSpecs.setInventorySold(BrandSpecsConstants.DEFAULT_INVENTORYSOLD);
							brandSpecs.setProductionLevel(brandSpecsMetadata[q].getProductionLevel());
							brandSpecs.setRetailPrice(brandSpecsMetadata[q].getRetailPrice());
							brandSpecsService.saveBrandSpecs(brandSpecs);
							
						}
					}
				}
			}
		}
	}

	
	@SuppressWarnings("unchecked")
	public void prepareDataForPeriod_0_SalesForce() {
		
		Team[] teams = teamService.getAllTeams();
		SalesForceMetadata[] salesForceMetadata = salesForceMetadataService.getAllSalesForceMetadata();
		
		for (int i = 0; i < teams.length ; i++){
			ResearchProject[] researchProjects = researchProjectService.getResearchProjectsForTeamCurrentPeriod(teams[i]);
			for (int j = 0; j < researchProjects.length; j++) {
				List<Brand> brandsList = new ArrayList<Brand>(researchProjects[j].getBrands());
				
				Brand[] brands = (Brand[])brandsList.toArray(new Brand[brandsList.size()]);
				for (int p = 0; p < brands.length; p++) {
					for (int q = 0; q < salesForceMetadata.length; q++) {
						if (salesForceMetadata[q].getBrandName().equalsIgnoreCase(brands[p].getBrandName())) {
							SalesForce salesForce = new SalesForce();
							salesForce.setBrand(brands[p]);
							salesForce.setSupermarket_sf(salesForceMetadata[q].getSupermarket_sf());
							salesForce.setGeneralStore_sf(salesForceMetadata[q].getGeneralStore_sf());
							salesForce.setKiranaStore_sf(salesForceMetadata[q].getKiranaStore_sf());
						
							salesForceService.saveSalesForce(salesForce);
							
						}
					}
				}
			}
		}
	}

	@SuppressWarnings("unchecked")
	public void prepareDataForPeriod_0_MarginOffered() {
		
		Team[] teams = teamService.getAllTeams();
		MarginOfferedMetadata[] marginOfferedMetadata = marginOfferedMetadataService.getAllMarginOfferedMetadata();
		
		for (int i = 0; i < teams.length ; i++){
			ResearchProject[] researchProjects = researchProjectService.getResearchProjectsForTeamCurrentPeriod(teams[i]);
			for (int j = 0; j < researchProjects.length; j++) {
				List<Brand> brandsList = new ArrayList<Brand>(researchProjects[j].getBrands());
				
				Brand[] brands = (Brand[])brandsList.toArray(new Brand[brandsList.size()]);
				for (int p = 0; p < brands.length; p++) {
					for (int q = 0; q < marginOfferedMetadata.length; q++) {
						if (marginOfferedMetadata[q].getBrandName().equalsIgnoreCase(brands[p].getBrandName())) {
							MarginOffered marginOffered = new MarginOffered();
							marginOffered.setBrand(brands[p]);
							marginOffered.setSupermarket_mo(marginOfferedMetadata[q].getSupermarket_mo());
							marginOffered.setGeneralStore_mo(marginOfferedMetadata[q].getGeneralStore_mo());
							marginOffered.setKiranaStore_mo(marginOfferedMetadata[q].getKiranaStore_mo());
						
							marginOfferedService.saveMarginOffered(marginOffered);
							
						}
					}
				}
			}
		}
		
	}
	

	
	
}
