package com.marklabs.distributionCoverage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;
import com.marklabs.purchaseIntention.IPurchaseIntentionService;
import com.marklabs.purchaseIntention.PurchaseIntentionChannel;
import com.marklabs.researchProject.IResearchProjectService;
import com.marklabs.researchProject.ResearchProject;
import com.marklabs.teams.Team;
import com.marklabs.utils.ChannelConstants;
import com.marklabs.utils.IChannelConstantsService;

public class DistributionCoverageTransitionService extends HibernateDaoSupport implements
		IDistributionCoverageTransitionService {
	
	IResearchProjectService researchProjectService;
	IPurchaseIntentionService purchaseIntentionService;
	IChannelConstantsService channelConstantsService;
	ISalesForceService salesForceService;
	IMarginOfferedService marginOfferedService;
	IDistributionCoverageService distributionCoverageService;
	
	
	/**
	 * @return the distributionCoverageService
	 */
	public IDistributionCoverageService getDistributionCoverageService() {
		return distributionCoverageService;
	}

	/**
	 * @param distributionCoverageService the distributionCoverageService to set
	 */
	public void setDistributionCoverageService(
			IDistributionCoverageService distributionCoverageService) {
		this.distributionCoverageService = distributionCoverageService;
	}

	/**
	 * @return the purchaseIntentionService
	 */
	public IPurchaseIntentionService getPurchaseIntentionService() {
		return purchaseIntentionService;
	}

	/**
	 * @param purchaseIntentionService the purchaseIntentionService to set
	 */
	public void setPurchaseIntentionService(
			IPurchaseIntentionService purchaseIntentionService) {
		this.purchaseIntentionService = purchaseIntentionService;
	}

	/**
	 * @return the channelConstantsService
	 */
	public IChannelConstantsService getChannelConstantsService() {
		return channelConstantsService;
	}

	/**
	 * @param channelConstantsService the channelConstantsService to set
	 */
	public void setChannelConstantsService(
			IChannelConstantsService channelConstantsService) {
		this.channelConstantsService = channelConstantsService;
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
	 * Function to Transition the Distribution Coverage
	 * @param selectedTeam
	 * @param currentPeriod
	 */
	public void transitionDistributionCoverageForTeam (Team selectedTeam,
			String currentPeriod) {
		
		int currPeriod = Integer.parseInt(currentPeriod); 
			
		ResearchProject[] researchProjects = 
			researchProjectService.getResearchProjectsForTeamCurrentPeriod(selectedTeam);
		
		if (researchProjects != null && researchProjects.length > 0) {
			for (int i = 0;i < researchProjects.length; i++) {
				Set<Brand> projectBrands = researchProjects[i].getBrands();
				Iterator<Brand> itr = projectBrands.iterator();
				while (itr.hasNext()) {
					Brand brand = (Brand)itr.next();
					
					ISalesForceEffort thisISalesForceEffort = calculateISalesForceEffort(brand, currPeriod);
					IMarginEffort thisIMarginEffort = calculateIMarginEffort(brand, currPeriod);
					IPurchaseIntentionEffort thisIPurchaseIntEffort = 
						calculateIPurchaseIntEffort(brand, currPeriod);
					
					DistributionCoverage thisDistributionCov = 
						calculateDistributionCoverage(brand, thisISalesForceEffort, thisIMarginEffort, 
								thisIPurchaseIntEffort, currPeriod);
					
					DistributionCoverage finalDistributionCoverage = 
						applyMaxMinChecksOnDistributionCov (thisDistributionCov);
					
					distributionCoverageService.saveDistributionCoverage(finalDistributionCoverage);
				}
			}
		}
		
		
	}

	private DistributionCoverage applyMaxMinChecksOnDistributionCov(
			DistributionCoverage thisDistributionCov) {
		
		double maxDistributionCov = 0.9, minDistributionCov = 0.0;
		
		if (thisDistributionCov.getSupermarket_dc() > 0.9)
			thisDistributionCov.setSupermarket_dc(maxDistributionCov);
		else if (thisDistributionCov.getSupermarket_dc() < 0)
			thisDistributionCov.setSupermarket_dc(minDistributionCov);
		
		if (thisDistributionCov.getGeneralStore_dc() > 0.9)
			thisDistributionCov.setGeneralStore_dc(maxDistributionCov);
		else if (thisDistributionCov.getGeneralStore_dc() < 0)
			thisDistributionCov.setGeneralStore_dc(minDistributionCov);
		
		if (thisDistributionCov.getKiranaStore_dc() > 0.9)
			thisDistributionCov.setKiranaStore_dc(maxDistributionCov);
		else if (thisDistributionCov.getKiranaStore_dc() < 0)
			thisDistributionCov.setKiranaStore_dc(minDistributionCov);
		
		
		return thisDistributionCov;
	}

	private IPurchaseIntentionEffort calculateIPurchaseIntEffort(Brand brand, int currPeriod) {
		
		double a=0.00, b=3.00, c=1.00, d=0.30,e=15.00;
		double superMarkets_pie = 0, generalStores_pie = 0, kiranaStores_pie = 0;
		IPurchaseIntentionEffort thisIPurchaseIntentionEffort = new IPurchaseIntentionEffort();
		
		PurchaseIntentionChannel thisBrandPurchaseIntChannel = 
			purchaseIntentionService.getPurchaseIntChannelForBrand(brand);
		
		if (thisBrandPurchaseIntChannel != null) {
			
			superMarkets_pie = d + ((a-d)/(Math.pow((1 + Math.pow((
					thisBrandPurchaseIntChannel.getSuperMarkets_pi()/c), b)), e)));
			
			generalStores_pie = d + ((a-d)/(Math.pow((1 + Math.pow((
					thisBrandPurchaseIntChannel.getGeneralStores_pi()/c), b)), e)));
			
			kiranaStores_pie = d + ((a-d)/(Math.pow((1 + Math.pow((
					thisBrandPurchaseIntChannel.getKiranaStores_pi()/c), b)), e)));
			
		}

		thisIPurchaseIntentionEffort.setBrand(brand);
		thisIPurchaseIntentionEffort.setSuperMarkets_pie(superMarkets_pie);
		thisIPurchaseIntentionEffort.setGeneralStores_pie(generalStores_pie);
		thisIPurchaseIntentionEffort.setKiranaStores_pie(kiranaStores_pie);
		 
		return thisIPurchaseIntentionEffort;

	}

	private IMarginEffort calculateIMarginEffort(Brand brand, int currPeriod) {
		
		double a=-0.20, b=2.50, c=0.27, d=0.30,e=2.00;
		double superMarkets_me = 0, generalStores_me = 0, kiranaStores_me = 0;
		IMarginEffort thisIMarginEffort = new IMarginEffort();
		
		MarginOffered thisBrandMarginOffered = marginOfferedService.getMarginOfferedForBrand(brand);
		ChannelConstants averageMargin = 
			channelConstantsService.getChannelConstantByNameAndPeriod("AVERAGE_MARGIN", currPeriod);
		
		superMarkets_me = d + ((a-d)/(Math.pow((1 + Math.pow(((thisBrandMarginOffered.getSupermarket_mo()/
				(5 * averageMargin.getSupermarket()))/c), b)), e)));
		
		generalStores_me = d + ((a-d)/(Math.pow((1 + Math.pow(((thisBrandMarginOffered.getGeneralStore_mo()/
				(5 * averageMargin.getGeneralStore()))/c), b)), e)));
		
		kiranaStores_me = d + ((a-d)/(Math.pow((1 + Math.pow(((thisBrandMarginOffered.getKiranaStore_mo()/
				(5 * averageMargin.getKiranaStore()))/c), b)), e)));
		
		thisIMarginEffort.setBrand(brand);
		thisIMarginEffort.setSuperMarkets_me(superMarkets_me);
		thisIMarginEffort.setGeneralStores_me(generalStores_me);
		thisIMarginEffort.setKiranaStores_me(kiranaStores_me);
		
		
		return thisIMarginEffort;
	}

	private ISalesForceEffort calculateISalesForceEffort(Brand brand, int currPeriod) {
		
		double a=1.20, b=3.00;
		double superMarketsSe = 0, generalStoresSe = 0, kiranaStoresSe = 0;
		ISalesForceEffort thisISalesForceEffort = new ISalesForceEffort();
		
		SalesForce thisBrandSalesForce = salesForceService.getSalesForceForBrand(brand);
		ChannelConstants idealSalesForceConst = 
			channelConstantsService.getChannelConstantByNameAndPeriod("IDEAL_SALESFORCE", currPeriod);
		
		superMarketsSe = (a*(thisBrandSalesForce.getSupermarket_sf()/idealSalesForceConst.getSupermarket()))/
			(1 + (a*(thisBrandSalesForce.getSupermarket_sf()/idealSalesForceConst.getSupermarket())/b));
		
		generalStoresSe = (a*(thisBrandSalesForce.getGeneralStore_sf()/idealSalesForceConst.getGeneralStore()))/
		(1 + (a*(thisBrandSalesForce.getGeneralStore_sf()/idealSalesForceConst.getGeneralStore())/b));
		
		kiranaStoresSe = (a*(thisBrandSalesForce.getKiranaStore_sf()/idealSalesForceConst.getKiranaStore()))/
		(1 + (a*(thisBrandSalesForce.getKiranaStore_sf()/idealSalesForceConst.getKiranaStore())/b));
		
		
		thisISalesForceEffort.setBrand(brand);
		thisISalesForceEffort.setSuperMarkets_se(superMarketsSe);
		thisISalesForceEffort.setGeneralStores_se(generalStoresSe);
		thisISalesForceEffort.setKiranaStores_se(kiranaStoresSe);
		
		return thisISalesForceEffort;
	}
	
	private DistributionCoverage calculateDistributionCoverage(Brand brand, 
			ISalesForceEffort thisISalesForceEffort, IMarginEffort thisIMarginEffort, 
			IPurchaseIntentionEffort thisIPurchaseIntEffort, int currPeriod) {

		DistributionCoverage distributionCoverage = new DistributionCoverage();
		double supermarket_dc = 0, generalStore_dc = 0, kiranaStore_dc = 0;
		
		ChannelConstants salesForceCoeff = 
			channelConstantsService.getChannelConstantByNameAndPeriod("SALESFORCE_COEFFICIENT", currPeriod);
		
		ChannelConstants marginCoeff = 
			channelConstantsService.getChannelConstantByNameAndPeriod("MARGIN_COEFFICIENT", currPeriod);
		
		ChannelConstants purchaseIntCoeff = 
			channelConstantsService.getChannelConstantByNameAndPeriod("PURCHASEINTENTION_COEFFICIENT", currPeriod);
		
		supermarket_dc = (thisISalesForceEffort.getSuperMarkets_se() * salesForceCoeff.getSupermarket()) +
			(thisIMarginEffort.getSuperMarkets_me() * marginCoeff.getSupermarket()) +
			(thisIPurchaseIntEffort.getSuperMarkets_pie() * purchaseIntCoeff.getSupermarket());
		
		generalStore_dc = (thisISalesForceEffort.getGeneralStores_se() * salesForceCoeff.getGeneralStore()) +
			(thisIMarginEffort.getGeneralStores_me() * marginCoeff.getGeneralStore()) +
			(thisIPurchaseIntEffort.getGeneralStores_pie() * purchaseIntCoeff.getGeneralStore());
		
		kiranaStore_dc = (thisISalesForceEffort.getKiranaStores_se() * salesForceCoeff.getKiranaStore()) +
			(thisIMarginEffort.getKiranaStores_me() * marginCoeff.getKiranaStore()) +
			(thisIPurchaseIntEffort.getKiranaStores_pie() * purchaseIntCoeff.getKiranaStore());
	
		
		distributionCoverage.setBrand(brand);
		distributionCoverage.setSupermarket_dc(supermarket_dc);
		distributionCoverage.setGeneralStore_dc(generalStore_dc);
		distributionCoverage.setKiranaStore_dc(kiranaStore_dc);
		
		
		return distributionCoverage;
	}
	
}
