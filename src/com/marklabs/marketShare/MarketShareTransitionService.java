package com.marklabs.marketShare;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brandAdvertisement.BrandAdvertisementService;
import com.marklabs.brandAdvertisement.IAdvBrandAwareness;
import com.marklabs.brandAdvertisement.IBrandAdvertisementService;
import com.marklabs.brandSpecifications.BrandSpecs;
import com.marklabs.brandSpecifications.IBrandSpecsService;
import com.marklabs.brands.Brand;
import com.marklabs.distributionCoverage.DistributionCoverage;
import com.marklabs.distributionCoverage.IDistributionCoverageService;
import com.marklabs.distributionCoverage.ISalesForceService;
import com.marklabs.distributionCoverage.SalesForce;
import com.marklabs.purchaseIntention.IPurchaseIntentionService;
import com.marklabs.purchaseIntention.PurchaseIntention;
import com.marklabs.researchProject.IResearchProjectService;
import com.marklabs.researchProject.ResearchProject;
import com.marklabs.teams.Team;
import com.marklabs.utils.IChannelConstantsService;
import com.marklabs.utils.ISegmentConstantsService;
import com.marklabs.utils.SegmentConstants;

public class MarketShareTransitionService extends HibernateDaoSupport implements
		IMarketShareTransitionService {

	IResearchProjectService researchProjectService;
	IMarketShareService marketShareService;
	ISalesForceService salesForceService;
	IBrandSpecsService brandSpecsService;
	IDistributionCoverageService distributionCoverageService;
	IChannelConstantsService channelConstantsService;
	ISegmentConstantsService segmentConstantsService;
	IPurchaseIntentionService purchaseIntentionService;
	IBrandAdvertisementService brandAdvertisementService;
	
	
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
	 * @return the segmentConstantsService
	 */
	public ISegmentConstantsService getSegmentConstantsService() {
		return segmentConstantsService;
	}

	/**
	 * @param segmentConstantsService the segmentConstantsService to set
	 */
	public void setSegmentConstantsService(
			ISegmentConstantsService segmentConstantsService) {
		this.segmentConstantsService = segmentConstantsService;
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
	 * @return the marketShareService
	 */
	public IMarketShareService getMarketShareService() {
		return marketShareService;
	}

	/**
	 * @param marketShareService the marketShareService to set
	 */
	public void setMarketShareService(IMarketShareService marketShareService) {
		this.marketShareService = marketShareService;
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
	 * Function to Transition the Channel Allocation, Channel Availability, Segment Availability,
	 * 		Channel Market Share and Segment Market Share
	 * @param selectedTeam
	 * @param currentPeriod
	 */
	public void transitionMarketShareForTeam (Team selectedTeam,
			String currentPeriod) {
		
		int currPeriod = Integer.parseInt(currentPeriod); 
		
		SegmentConstants superMarketDemandCC = 
			segmentConstantsService.getSegmentConstantByNameAndPeriod("SUPERMARKET_DEMAND", currPeriod);
		
		SegmentConstants generalStrDemandCC = 
			segmentConstantsService.getSegmentConstantByNameAndPeriod("GENERALSTORE_DEMAND", currPeriod);
		
		SegmentConstants kiranaStrDemandCC = 
			segmentConstantsService.getSegmentConstantByNameAndPeriod("KIRANASTORE_DEMAND", currPeriod);
		
			
		ResearchProject[] researchProjects = 
			researchProjectService.getResearchProjectsForTeamCurrentPeriod(selectedTeam);
		
		HashMap<Brand, SuperMarketSegMarketShare> superMarketSegMShareMap = 
			new HashMap<Brand, SuperMarketSegMarketShare>();
		
		HashMap<Brand, GenStoreSegMarketShare> genStoreSegMShareMap = 
			new HashMap<Brand, GenStoreSegMarketShare>();
		
		HashMap<Brand, KiranaStoreSegMarketShare> kiranaStoreSegMShareMap = 
			new HashMap<Brand, KiranaStoreSegMarketShare>();
		
		HashMap<Brand, SuperMarketSegAvailability> superMarketSegAvailMap = 
			new HashMap<Brand, SuperMarketSegAvailability>();
		
		HashMap<Brand, GenStoreSegAvailability> genStoreSegAvailMap = 
			new HashMap<Brand, GenStoreSegAvailability>();
		
		HashMap<Brand, KiranaStoreSegAvailability> kiranaStoreSegAvailMap = 
			new HashMap<Brand, KiranaStoreSegAvailability>();
		
		
		if (researchProjects != null && researchProjects.length > 0) {
			for (int i = 0;i < researchProjects.length; i++) {
				Set<Brand> projectBrands = researchProjects[i].getBrands();
				Iterator<Brand> itr = projectBrands.iterator();
				while (itr.hasNext()) {
					Brand brand = (Brand)itr.next();
					
					// Calculation and Transition for Brand Channel Allocation
					ChannelAllocation thisBrandCAllocation = 
						getChannelAllocationForThisBrand(brand, currPeriod);
					
					// Saving Brand Channel Allocation
					marketShareService.saveChannelAllocation(thisBrandCAllocation);
					
					// Calculation and Transition for Brand Channel Availability
					ChannelAvailability thisBrandCAvailability = 
						getChannelAvailabilityForThisBrand(brand, currPeriod, thisBrandCAllocation, 
								superMarketDemandCC, generalStrDemandCC, kiranaStrDemandCC);
					
					//Saving Brand Channel Availability
					marketShareService.saveChannelAvailability(thisBrandCAvailability);
					
					// Calculation and Transition for Brand SuperMarket Segment Availability.
					SuperMarketSegAvailability thisBrandSMSegAvail = 
						getSuperMarketSegmentAvail(brand, currPeriod, thisBrandCAvailability, 
								superMarketDemandCC);
					
					//Saving Brand SuperMarket Segment Availability
					marketShareService.saveSuperMarketSegAvailability(thisBrandSMSegAvail);
					
					//Adding the Brand SuperMarketSegmentAvailability to HashMap
					superMarketSegAvailMap.put(brand, thisBrandSMSegAvail);
					
					// Calculation and Transition for Brand GeneralStore Segment Availability.
					GenStoreSegAvailability thisBrandGSSegAvail = 
						getGenStoreSegmentAvail(brand, currPeriod, thisBrandCAvailability, 
								generalStrDemandCC);
					
					// Saving Brand GeneralStore Segment Availability
					marketShareService.saveGenStoreSegAvailability(thisBrandGSSegAvail);
					
					//Adding the Brand GenStoreSegmentAvailability to HashMap
					genStoreSegAvailMap.put(brand, thisBrandGSSegAvail);
					
					// Calculation and Transition for Brand KiranaStore Segment Availability.
					KiranaStoreSegAvailability thisBrandKSSegAvail = 
						getKiranaStoreSegmentAvail(brand, currPeriod, thisBrandCAvailability, 
							   kiranaStrDemandCC);
					
					// Saving Brand KiranaStore Segment Availability
					marketShareService.saveKiranaStoreSegAvailability(thisBrandKSSegAvail);
					
					//Adding the Brand GenStoreSegmentAvailability to HashMap
					kiranaStoreSegAvailMap.put(brand, thisBrandKSSegAvail);
					
					
					// Fetching the Brand Segment Purchase Intention Object for thisBrand
					PurchaseIntention segment_pi = purchaseIntentionService.getPurchaseIntSegForBrand(brand);
					
					//Fetching Segment Brand Awareness Object for thisBrand
					IAdvBrandAwareness brandAwareness = brandAdvertisementService.getBrandAwareness(brand);					
									
					
					//Calculations for Brand SuperMarket Segment marketShare
					SuperMarketSegMarketShare thisBrandSMSegMarketShare = 
						getSuperMarketSegmentMarketShare(brand, currPeriod, thisBrandSMSegAvail, 
								segment_pi, brandAwareness);
					
					// Adding the Brand SuperMarket marketShare to superMarketSegMShare HashMap
					superMarketSegMShareMap.put(brand, thisBrandSMSegMarketShare);
					
					//Calculations for Brand General Store Segment Market Share
					GenStoreSegMarketShare thisBrandGSSegMarketShare = 
						getGenStoreSegmentMarketShare(brand, currPeriod, thisBrandGSSegAvail, 
								segment_pi, brandAwareness);
					
					// Adding the Brand GeneralStore marketShare to genStoreSegMShare HashMap
					genStoreSegMShareMap.put(brand, thisBrandGSSegMarketShare);
					
					//Calculations for Brand KiranaStore Segment Market Share
					KiranaStoreSegMarketShare thisBrandKSSegMarketShare = 
						getKiranaStoreSegmentMarketShare(brand, currPeriod, thisBrandKSSegAvail, 
								segment_pi, brandAwareness);
					
					//Adding the Brand kiranaStore marketShare to kiranaStoreSegMShare HashMap
					kiranaStoreSegMShareMap.put(brand, thisBrandKSSegMarketShare);
					
				}
			}
		}
		
		/**
		 * Now as we have got the allocation, channel availability, SuperMarket Segment Availability, 
		 * 	General Store Segment Availability, Kirana Store Segment Availability calculated in the database.
		 * 
		 * And the HashMaps for Brands mapped with their Super Market Segment MarketShare, 
		 * 	General Store Segment Market Share, Kirana Store Segment Market Share.
		 * 
		 * Now we need to process these HashMaps and see if the Total Market Share of a Segment in a channel 
		 * 	equals 1, if not normalize
		 * 
		 * 
		 */
		
		
		// Normalization Begins
		HashMap<Brand, SuperMarketSegMarketShare> finalSuperMarketSegMShareMap = 
			normalizeSuperMarketSegMarketShare(superMarketSegMShareMap, superMarketSegAvailMap);
		
		for (int i = 0; i < 10; i++) 
			finalSuperMarketSegMShareMap = 
				normalizeSuperMarketSegMarketShare(finalSuperMarketSegMShareMap, superMarketSegAvailMap);
		
		HashMap<Brand, GenStoreSegMarketShare> finalGenStoreSegMShareMap = 
			normalizeGenStoreSegMarketShare(genStoreSegMShareMap, genStoreSegAvailMap);
		
		for (int i = 0; i< 10; i++) 
			finalGenStoreSegMShareMap = 
				normalizeGenStoreSegMarketShare(finalGenStoreSegMShareMap, genStoreSegAvailMap);
		
		HashMap<Brand, KiranaStoreSegMarketShare> finalKiranaStoreSegMShareMap = 
			normalizeKiranaStoreSegMarketShare(kiranaStoreSegMShareMap, kiranaStoreSegAvailMap);
		
		for (int i = 0; i< 10; i++)
			finalKiranaStoreSegMShareMap = 
				normalizeKiranaStoreSegMarketShare(finalKiranaStoreSegMShareMap, kiranaStoreSegAvailMap);
		
		
		// Now Iterate over the 3 maps and save Segment Market Share in the corresponding Channel tables.
		
		Iterator<Map.Entry<Brand, SuperMarketSegMarketShare>> itrSuperMarket = 
			finalSuperMarketSegMShareMap.entrySet().iterator();
		while (itrSuperMarket.hasNext()) {
			Map.Entry<Brand, SuperMarketSegMarketShare> entry = 
				(Map.Entry<Brand, SuperMarketSegMarketShare>) itrSuperMarket.next();
			
			marketShareService.saveSuperMarketSegMarketShare(entry.getValue());
		}
		
		
		Iterator<Map.Entry<Brand, GenStoreSegMarketShare>> itrGenStore = 
			finalGenStoreSegMShareMap.entrySet().iterator();
		while (itrSuperMarket.hasNext()) {
			Map.Entry<Brand, GenStoreSegMarketShare> entry = 
				(Map.Entry<Brand, GenStoreSegMarketShare>) itrGenStore.next();
			
			marketShareService.saveGenStoreSegMarketShare(entry.getValue());
		}
		
		Iterator<Map.Entry<Brand, KiranaStoreSegMarketShare>> itrKiranaStore = 
			finalKiranaStoreSegMShareMap.entrySet().iterator();
		while (itrSuperMarket.hasNext()) {
			Map.Entry<Brand, KiranaStoreSegMarketShare> entry = 
				(Map.Entry<Brand, KiranaStoreSegMarketShare>) itrKiranaStore.next();
			
			marketShareService.saveKiranaStoreSegMarketShare(entry.getValue());
		}
		
		
		// Now we will calculate the Channel Market Share
		
		
		
		
		// Now we will calculate the Final Market Share across Segments irrespective of channels 
		
	}
	
	
	
	// ----------------------------------------------------------------------------------------------------
	// Private function assisting in calculations for the Market Share Transition
	
	
	
	private HashMap<Brand, GenStoreSegMarketShare> normalizeGenStoreSegMarketShare(
			HashMap<Brand, GenStoreSegMarketShare> genStoreSegMShareMap, 
			HashMap<Brand, GenStoreSegAvailability> genStoreSegAvailMap) {
		
		HashMap<Brand, GenStoreSegMarketShare> normalizedGSSegMShareMap = 
			new HashMap<Brand, GenStoreSegMarketShare>();
		
		double sumMarketShare_bb = 0, sumMarketShare_raffles = 0, sumMarketShare_wannabes = 0,
		sumMarketShare_strug = 0, sumMarketShare_dep = 0;
		
		double unchanged_sumMarketShare_bb = 0, unchanged_sumMarketShare_raffles = 0, 
			unchanged_sumMarketShare_wannabes = 0, unchanged_sumMarketShare_strug = 0, 
			unchanged_sumMarketShare_dep = 0;
		
		Iterator<Map.Entry<Brand, GenStoreSegMarketShare>> itr = 
			genStoreSegMShareMap.entrySet().iterator();
		
		//Calculating the sum of Segment Market Share for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, GenStoreSegMarketShare> entry = 
				(Map.Entry<Brand, GenStoreSegMarketShare>) itr.next();
			
			GenStoreSegMarketShare thisBrandGSSegMShare =  entry.getValue();
			
			sumMarketShare_bb = sumMarketShare_bb + thisBrandGSSegMShare.getSegBlueBloodsMS();
			sumMarketShare_raffles = sumMarketShare_raffles + thisBrandGSSegMShare.getSegRafflesMS();
			sumMarketShare_wannabes = sumMarketShare_wannabes + thisBrandGSSegMShare.getSegWannabesMS();
			sumMarketShare_strug = sumMarketShare_strug + thisBrandGSSegMShare.getSegStrugglersMS();
			sumMarketShare_dep = sumMarketShare_dep + thisBrandGSSegMShare.getSegDeprivedMS();
		}
		
		//Calculating the sum of Unchanged Segment Market Share for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, GenStoreSegMarketShare> entry = 
				(Map.Entry<Brand, GenStoreSegMarketShare>) itr.next();
			
			Brand thisBrand = entry.getKey();
			GenStoreSegMarketShare thisBrandGSSegMShare =  entry.getValue();
			
			GenStoreSegAvailability genStrSegAvailability = genStoreSegAvailMap.get(thisBrand) ;
			
			if (thisBrandGSSegMShare.getSegBlueBloodsMS() != genStrSegAvailability.getSegBlueBloodsAvail()) 
				unchanged_sumMarketShare_bb = unchanged_sumMarketShare_bb + thisBrandGSSegMShare.getSegBlueBloodsMS();
			
			if (thisBrandGSSegMShare.getSegRafflesMS() != genStrSegAvailability.getSegRafflesAvail()) 
				unchanged_sumMarketShare_raffles = unchanged_sumMarketShare_raffles + thisBrandGSSegMShare.getSegRafflesMS();
			
			if (thisBrandGSSegMShare.getSegWannabesMS() != genStrSegAvailability.getSegWannabesAvail()) 
				unchanged_sumMarketShare_wannabes = unchanged_sumMarketShare_wannabes + thisBrandGSSegMShare.getSegWannabesMS();
			
			if (thisBrandGSSegMShare.getSegStrugglersMS() != genStrSegAvailability.getSegStrugglersAvail()) 
				unchanged_sumMarketShare_strug = unchanged_sumMarketShare_strug + thisBrandGSSegMShare.getSegStrugglersMS();
			
			if (thisBrandGSSegMShare.getSegDeprivedMS() != genStrSegAvailability.getSegDeprivedAvail()) 
				unchanged_sumMarketShare_dep = unchanged_sumMarketShare_dep + thisBrandGSSegMShare.getSegDeprivedMS();
			
		}

		
		//Calculating the Normalised Brand Segment Market Share for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, GenStoreSegMarketShare> entry = 
				(Map.Entry<Brand, GenStoreSegMarketShare>) itr.next();
			
			Brand thisBrand = entry.getKey();
			GenStoreSegMarketShare thisBrandGSSegMShare = entry.getValue();
			
			GenStoreSegMarketShare normGSSegMShare = new GenStoreSegMarketShare(); 
			GenStoreSegAvailability gsSegAvailability = genStoreSegAvailMap.get(thisBrand) ;
			
			normGSSegMShare.setBrand(thisBrandGSSegMShare.getBrand());
			
			//Final Segment Market Share for Blue Bloods
			if (sumMarketShare_bb != 100) {
				double diff = 1.0 - sumMarketShare_bb;
				
				normGSSegMShare.setSegBlueBloodsMS(Math.min(gsSegAvailability.getSegBlueBloodsAvail(), 
						(thisBrandGSSegMShare.getSegBlueBloodsMS() + diff * 
								thisBrandGSSegMShare.getSegBlueBloodsMS()/unchanged_sumMarketShare_bb)));
			}
			else
				normGSSegMShare.setSegBlueBloodsMS(thisBrandGSSegMShare.getSegBlueBloodsMS());
			
			//Final Segment Market Share for Raffles
			if (sumMarketShare_raffles != 100) {
				double diff = 1.0 - sumMarketShare_raffles;
				
				normGSSegMShare.setSegRafflesMS(Math.min(gsSegAvailability.getSegRafflesAvail(), 
						(thisBrandGSSegMShare.getSegRafflesMS() + diff * 
								thisBrandGSSegMShare.getSegRafflesMS()/unchanged_sumMarketShare_raffles)));
			}
			else
				normGSSegMShare.setSegRafflesMS(thisBrandGSSegMShare.getSegRafflesMS());
			
			
			//Final Segment Market Share for Wannabes
			if (sumMarketShare_wannabes != 100) {
				double diff = 1.0 - sumMarketShare_wannabes;
				
				normGSSegMShare.setSegWannabesMS(Math.min(gsSegAvailability.getSegWannabesAvail(), 
						(thisBrandGSSegMShare.getSegWannabesMS() + diff * 
								thisBrandGSSegMShare.getSegWannabesMS()/unchanged_sumMarketShare_wannabes)));
			}
			else
				normGSSegMShare.setSegWannabesMS(thisBrandGSSegMShare.getSegWannabesMS());
			
			
			//Final Segment Market Share for Strugglers
			if (sumMarketShare_strug != 100) {
				double diff = 1.0 - sumMarketShare_strug;
				
				normGSSegMShare.setSegStrugglersMS(Math.min(gsSegAvailability.getSegStrugglersAvail(), 
						(thisBrandGSSegMShare.getSegStrugglersMS() + diff * 
								thisBrandGSSegMShare.getSegStrugglersMS()/unchanged_sumMarketShare_strug)));
			}
			else
				normGSSegMShare.setSegStrugglersMS(thisBrandGSSegMShare.getSegStrugglersMS());
			
			//Final Segment Market Share for Deprived
			if (sumMarketShare_dep != 100) {
				double diff = 1.0 - sumMarketShare_dep;
				
				normGSSegMShare.setSegDeprivedMS(Math.min(gsSegAvailability.getSegDeprivedAvail(), 
						(thisBrandGSSegMShare.getSegDeprivedMS() + diff * 
								thisBrandGSSegMShare.getSegDeprivedMS()/unchanged_sumMarketShare_dep)));
			}
			else
				normGSSegMShare.setSegDeprivedMS(thisBrandGSSegMShare.getSegDeprivedMS());
			
			
			normalizedGSSegMShareMap.put(thisBrand, normGSSegMShare);
		}
	
		
		
		return normalizedGSSegMShareMap;
	}

	private HashMap<Brand, KiranaStoreSegMarketShare> normalizeKiranaStoreSegMarketShare(
			HashMap<Brand, KiranaStoreSegMarketShare> kiranaStoreSegMShareMap, 
			HashMap<Brand, KiranaStoreSegAvailability> kiranaStoreSegAvailMap) {
	
		
		HashMap<Brand, KiranaStoreSegMarketShare> normalizedKSSegMShareMap = 
			new HashMap<Brand, KiranaStoreSegMarketShare>();
		
		double sumMarketShare_bb = 0, sumMarketShare_raffles = 0, sumMarketShare_wannabes = 0,
		sumMarketShare_strug = 0, sumMarketShare_dep = 0;
		
		double unchanged_sumMarketShare_bb = 0, unchanged_sumMarketShare_raffles = 0, 
			unchanged_sumMarketShare_wannabes = 0, unchanged_sumMarketShare_strug = 0, 
			unchanged_sumMarketShare_dep = 0;
		
		Iterator<Map.Entry<Brand, KiranaStoreSegMarketShare>> itr = 
			kiranaStoreSegMShareMap.entrySet().iterator();
		
		//Calculating the sum of Segment Market Share for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, KiranaStoreSegMarketShare> entry = 
				(Map.Entry<Brand, KiranaStoreSegMarketShare>) itr.next();
			
			KiranaStoreSegMarketShare thisBrandKSSegMShare =  entry.getValue();
			
			sumMarketShare_bb = sumMarketShare_bb + thisBrandKSSegMShare.getSegBlueBloodsMS();
			sumMarketShare_raffles = sumMarketShare_raffles + thisBrandKSSegMShare.getSegRafflesMS();
			sumMarketShare_wannabes = sumMarketShare_wannabes + thisBrandKSSegMShare.getSegWannabesMS();
			sumMarketShare_strug = sumMarketShare_strug + thisBrandKSSegMShare.getSegStrugglersMS();
			sumMarketShare_dep = sumMarketShare_dep + thisBrandKSSegMShare.getSegDeprivedMS();
		}
		
		//Calculating the sum of Unchanged Segment Market Share for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, KiranaStoreSegMarketShare> entry = 
				(Map.Entry<Brand, KiranaStoreSegMarketShare>) itr.next();
			
			Brand thisBrand = entry.getKey();
			KiranaStoreSegMarketShare thisBrandKSSegMShare =  entry.getValue();
			
			KiranaStoreSegAvailability ksSegAvailability = kiranaStoreSegAvailMap.get(thisBrand) ;
			
			if (thisBrandKSSegMShare.getSegBlueBloodsMS() != ksSegAvailability.getSegBlueBloodsAvail()) 
				unchanged_sumMarketShare_bb = unchanged_sumMarketShare_bb + thisBrandKSSegMShare.getSegBlueBloodsMS();
			
			if (thisBrandKSSegMShare.getSegRafflesMS() != ksSegAvailability.getSegRafflesAvail()) 
				unchanged_sumMarketShare_raffles = unchanged_sumMarketShare_raffles + thisBrandKSSegMShare.getSegRafflesMS();
			
			if (thisBrandKSSegMShare.getSegWannabesMS() != ksSegAvailability.getSegWannabesAvail()) 
				unchanged_sumMarketShare_wannabes = unchanged_sumMarketShare_wannabes + thisBrandKSSegMShare.getSegWannabesMS();
			
			if (thisBrandKSSegMShare.getSegStrugglersMS() != ksSegAvailability.getSegStrugglersAvail()) 
				unchanged_sumMarketShare_strug = unchanged_sumMarketShare_strug + thisBrandKSSegMShare.getSegStrugglersMS();
			
			if (thisBrandKSSegMShare.getSegDeprivedMS() != ksSegAvailability.getSegDeprivedAvail()) 
				unchanged_sumMarketShare_dep = unchanged_sumMarketShare_dep + thisBrandKSSegMShare.getSegDeprivedMS();
			
		}

		
		//Calculating the Normalised Brand Segment Market Share for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, KiranaStoreSegMarketShare> entry = 
				(Map.Entry<Brand, KiranaStoreSegMarketShare>) itr.next();
			
			Brand thisBrand = entry.getKey();
			KiranaStoreSegMarketShare thisBrandKSSegMShare = entry.getValue();
			
			KiranaStoreSegMarketShare normKSSegMShare = new KiranaStoreSegMarketShare(); 
			KiranaStoreSegAvailability ksSegAvailability = kiranaStoreSegAvailMap.get(thisBrand) ;
			
			normKSSegMShare.setBrand(thisBrandKSSegMShare.getBrand());
			
			//Final Segment Market Share for Blue Bloods
			if (sumMarketShare_bb != 100) {
				double diff = 1.0 - sumMarketShare_bb;
				
				normKSSegMShare.setSegBlueBloodsMS(Math.min(ksSegAvailability.getSegBlueBloodsAvail(), 
						(thisBrandKSSegMShare.getSegBlueBloodsMS() + diff * 
								thisBrandKSSegMShare.getSegBlueBloodsMS()/unchanged_sumMarketShare_bb)));
			}
			else
				normKSSegMShare.setSegBlueBloodsMS(thisBrandKSSegMShare.getSegBlueBloodsMS());
			
			//Final Segment Market Share for Raffles
			if (sumMarketShare_raffles != 100) {
				double diff = 1.0 - sumMarketShare_raffles;
				
				normKSSegMShare.setSegRafflesMS(Math.min(ksSegAvailability.getSegRafflesAvail(), 
						(thisBrandKSSegMShare.getSegRafflesMS() + diff * 
								thisBrandKSSegMShare.getSegRafflesMS()/unchanged_sumMarketShare_raffles)));
			}
			else
				normKSSegMShare.setSegRafflesMS(thisBrandKSSegMShare.getSegRafflesMS());
			
			
			//Final Segment Market Share for Wannabes
			if (sumMarketShare_wannabes != 100) {
				double diff = 1.0 - sumMarketShare_wannabes;
				
				normKSSegMShare.setSegWannabesMS(Math.min(ksSegAvailability.getSegWannabesAvail(), 
						(thisBrandKSSegMShare.getSegWannabesMS() + diff * 
								thisBrandKSSegMShare.getSegWannabesMS()/unchanged_sumMarketShare_wannabes)));
			}
			else
				normKSSegMShare.setSegWannabesMS(thisBrandKSSegMShare.getSegWannabesMS());
			
			
			//Final Segment Market Share for Strugglers
			if (sumMarketShare_strug != 100) {
				double diff = 1.0 - sumMarketShare_strug;
				
				normKSSegMShare.setSegStrugglersMS(Math.min(ksSegAvailability.getSegStrugglersAvail(), 
						(thisBrandKSSegMShare.getSegStrugglersMS() + diff * 
								thisBrandKSSegMShare.getSegStrugglersMS()/unchanged_sumMarketShare_strug)));
			}
			else
				normKSSegMShare.setSegStrugglersMS(thisBrandKSSegMShare.getSegStrugglersMS());
			
			//Final Segment Market Share for Deprived
			if (sumMarketShare_dep != 100) {
				double diff = 1.0 - sumMarketShare_dep;
				
				normKSSegMShare.setSegDeprivedMS(Math.min(ksSegAvailability.getSegDeprivedAvail(), 
						(thisBrandKSSegMShare.getSegDeprivedMS() + diff * 
								thisBrandKSSegMShare.getSegDeprivedMS()/unchanged_sumMarketShare_dep)));
			}
			else
				normKSSegMShare.setSegDeprivedMS(thisBrandKSSegMShare.getSegDeprivedMS());
			
			
			normalizedKSSegMShareMap.put(thisBrand, normKSSegMShare);
		}
	
		
		return null;
	}

	private HashMap<Brand, SuperMarketSegMarketShare> normalizeSuperMarketSegMarketShare(
			HashMap<Brand, SuperMarketSegMarketShare> superMarketSegMShareMap, 
			HashMap<Brand, SuperMarketSegAvailability> superMarketSegAvailMap) {
		
		HashMap<Brand, SuperMarketSegMarketShare> normalizedSMSegMShareMap = 
			new HashMap<Brand, SuperMarketSegMarketShare>();
		
		double sumMarketShare_bb = 0, sumMarketShare_raffles = 0, sumMarketShare_wannabes = 0,
		sumMarketShare_strug = 0, sumMarketShare_dep = 0;
		
		double unchanged_sumMarketShare_bb = 0, unchanged_sumMarketShare_raffles = 0, 
			unchanged_sumMarketShare_wannabes = 0, unchanged_sumMarketShare_strug = 0, 
			unchanged_sumMarketShare_dep = 0;
		
		Iterator<Map.Entry<Brand, SuperMarketSegMarketShare>> itr = 
			superMarketSegMShareMap.entrySet().iterator();
		
		//Calculating the sum of Segment Market Share for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, SuperMarketSegMarketShare> entry = 
				(Map.Entry<Brand, SuperMarketSegMarketShare>) itr.next();
			
			SuperMarketSegMarketShare thisBrandSMSegMShare =  entry.getValue();
			
			sumMarketShare_bb = sumMarketShare_bb + thisBrandSMSegMShare.getSegBlueBloodsMS();
			sumMarketShare_raffles = sumMarketShare_raffles + thisBrandSMSegMShare.getSegRafflesMS();
			sumMarketShare_wannabes = sumMarketShare_wannabes + thisBrandSMSegMShare.getSegWannabesMS();
			sumMarketShare_strug = sumMarketShare_strug + thisBrandSMSegMShare.getSegStrugglersMS();
			sumMarketShare_dep = sumMarketShare_dep + thisBrandSMSegMShare.getSegDeprivedMS();
		}
		
		//Calculating the sum of Unchanged Segment Market Share for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, SuperMarketSegMarketShare> entry = 
				(Map.Entry<Brand, SuperMarketSegMarketShare>) itr.next();
			
			Brand thisBrand = entry.getKey();
			SuperMarketSegMarketShare thisBrandSMSegMShare =  entry.getValue();
			
			SuperMarketSegAvailability smSegAvailability = superMarketSegAvailMap.get(thisBrand) ;
			
			if (thisBrandSMSegMShare.getSegBlueBloodsMS() != smSegAvailability.getSegBlueBloodsAvail()) 
				unchanged_sumMarketShare_bb = unchanged_sumMarketShare_bb + thisBrandSMSegMShare.getSegBlueBloodsMS();
			
			if (thisBrandSMSegMShare.getSegRafflesMS() != smSegAvailability.getSegRafflesAvail()) 
				unchanged_sumMarketShare_raffles = unchanged_sumMarketShare_raffles + thisBrandSMSegMShare.getSegRafflesMS();
			
			if (thisBrandSMSegMShare.getSegWannabesMS() != smSegAvailability.getSegWannabesAvail()) 
				unchanged_sumMarketShare_wannabes = unchanged_sumMarketShare_wannabes + thisBrandSMSegMShare.getSegWannabesMS();
			
			if (thisBrandSMSegMShare.getSegStrugglersMS() != smSegAvailability.getSegStrugglersAvail()) 
				unchanged_sumMarketShare_strug = unchanged_sumMarketShare_strug + thisBrandSMSegMShare.getSegStrugglersMS();
			
			if (thisBrandSMSegMShare.getSegDeprivedMS() != smSegAvailability.getSegDeprivedAvail()) 
				unchanged_sumMarketShare_dep = unchanged_sumMarketShare_dep + thisBrandSMSegMShare.getSegDeprivedMS();
			
		}

		
		//Calculating the Normalised Brand Segment Market Share for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, SuperMarketSegMarketShare> entry = 
				(Map.Entry<Brand, SuperMarketSegMarketShare>) itr.next();
			
			Brand thisBrand = entry.getKey();
			SuperMarketSegMarketShare thisBrandSMSegMShare = entry.getValue();
			
			SuperMarketSegMarketShare normSMSegMShare = new SuperMarketSegMarketShare(); 
			SuperMarketSegAvailability smSegAvailability = superMarketSegAvailMap.get(thisBrand) ;
			
			normSMSegMShare.setBrand(thisBrandSMSegMShare.getBrand());
			
			//Final Segment Market Share for Blue Bloods
			if (sumMarketShare_bb != 100) {
				double diff = 1.0 - sumMarketShare_bb;
				
				normSMSegMShare.setSegBlueBloodsMS(Math.min(smSegAvailability.getSegBlueBloodsAvail(), 
						(thisBrandSMSegMShare.getSegBlueBloodsMS() + diff * 
								thisBrandSMSegMShare.getSegBlueBloodsMS()/unchanged_sumMarketShare_bb)));
			}
			else
				normSMSegMShare.setSegBlueBloodsMS(thisBrandSMSegMShare.getSegBlueBloodsMS());
			
			//Final Segment Market Share for Raffles
			if (sumMarketShare_raffles != 100) {
				double diff = 1.0 - sumMarketShare_raffles;
				
				normSMSegMShare.setSegRafflesMS(Math.min(smSegAvailability.getSegRafflesAvail(), 
						(thisBrandSMSegMShare.getSegRafflesMS() + diff * 
								thisBrandSMSegMShare.getSegRafflesMS()/unchanged_sumMarketShare_raffles)));
			}
			else
				normSMSegMShare.setSegRafflesMS(thisBrandSMSegMShare.getSegRafflesMS());
			
			
			//Final Segment Market Share for Wannabes
			if (sumMarketShare_wannabes != 100) {
				double diff = 1.0 - sumMarketShare_wannabes;
				
				normSMSegMShare.setSegWannabesMS(Math.min(smSegAvailability.getSegWannabesAvail(), 
						(thisBrandSMSegMShare.getSegWannabesMS() + diff * 
								thisBrandSMSegMShare.getSegWannabesMS()/unchanged_sumMarketShare_wannabes)));
			}
			else
				normSMSegMShare.setSegWannabesMS(thisBrandSMSegMShare.getSegWannabesMS());
			
			
			//Final Segment Market Share for Strugglers
			if (sumMarketShare_strug != 100) {
				double diff = 1.0 - sumMarketShare_strug;
				
				normSMSegMShare.setSegStrugglersMS(Math.min(smSegAvailability.getSegStrugglersAvail(), 
						(thisBrandSMSegMShare.getSegStrugglersMS() + diff * 
								thisBrandSMSegMShare.getSegStrugglersMS()/unchanged_sumMarketShare_strug)));
			}
			else
				normSMSegMShare.setSegStrugglersMS(thisBrandSMSegMShare.getSegStrugglersMS());
			
			//Final Segment Market Share for Deprived
			if (sumMarketShare_dep != 100) {
				double diff = 1.0 - sumMarketShare_dep;
				
				normSMSegMShare.setSegDeprivedMS(Math.min(smSegAvailability.getSegDeprivedAvail(), 
						(thisBrandSMSegMShare.getSegDeprivedMS() + diff * 
								thisBrandSMSegMShare.getSegDeprivedMS()/unchanged_sumMarketShare_dep)));
			}
			else
				normSMSegMShare.setSegDeprivedMS(thisBrandSMSegMShare.getSegDeprivedMS());
			
			
			normalizedSMSegMShareMap.put(thisBrand, normSMSegMShare);
		}
	
		return normalizedSMSegMShareMap;
	}

	private SuperMarketSegMarketShare getSuperMarketSegmentMarketShare(
			Brand brand, int currPeriod, SuperMarketSegAvailability thisBrandSMSegAvail, 
			PurchaseIntention segment_pi, IAdvBrandAwareness brandAwareness) {
		
		SuperMarketSegMarketShare thisBrandSMSegMarkShare = new SuperMarketSegMarketShare();
		
		thisBrandSMSegMarkShare.setBrand(brand);
		
		thisBrandSMSegMarkShare.setSegBlueBloodsMS(Math.min(thisBrandSMSegAvail.getSegBlueBloodsAvail(),
				((0.05 * brandAwareness.getBluebloods_BrandAwareness())+ (segment_pi.getBluebloods_pi()))));
		
		thisBrandSMSegMarkShare.setSegRafflesMS(Math.min(thisBrandSMSegAvail.getSegRafflesAvail(),
				((0.05 * brandAwareness.getRaffles_BrandAwareness())+ (segment_pi.getRaffles_pi()))));
		
		thisBrandSMSegMarkShare.setSegWannabesMS(Math.min(thisBrandSMSegAvail.getSegWannabesAvail(),
				((0.05 * brandAwareness.getWannabes_BrandAwareness())+ (segment_pi.getWannabes_pi()))));
		
		thisBrandSMSegMarkShare.setSegStrugglersMS(Math.min(thisBrandSMSegAvail.getSegStrugglersAvail(),
				((0.05 * brandAwareness.getStrugglers_BrandAwareness())+ (segment_pi.getStrugglers_pi()))));
		
		thisBrandSMSegMarkShare.setSegDeprivedMS(Math.min(thisBrandSMSegAvail.getSegDeprivedAvail(),
				((0.05 * brandAwareness.getDeprived_BrandAwareness())+ (segment_pi.getDeprived_pi()))));
		
		return thisBrandSMSegMarkShare;
	}
	

	private GenStoreSegMarketShare getGenStoreSegmentMarketShare(Brand brand,
			int currPeriod, GenStoreSegAvailability thisBrandGSSegAvail, 
			PurchaseIntention segment_pi, IAdvBrandAwareness brandAwareness) {
		
		
		GenStoreSegMarketShare thisBrandGSSegMarkShare = new GenStoreSegMarketShare();
		
		thisBrandGSSegMarkShare.setBrand(brand);
		
		thisBrandGSSegMarkShare.setSegBlueBloodsMS(Math.min(thisBrandGSSegAvail.getSegBlueBloodsAvail(),
				((0.05 * brandAwareness.getBluebloods_BrandAwareness())+ (segment_pi.getBluebloods_pi()))));
		
		thisBrandGSSegMarkShare.setSegRafflesMS(Math.min(thisBrandGSSegAvail.getSegRafflesAvail(),
				((0.05 * brandAwareness.getRaffles_BrandAwareness())+ (segment_pi.getRaffles_pi()))));
		
		thisBrandGSSegMarkShare.setSegWannabesMS(Math.min(thisBrandGSSegAvail.getSegWannabesAvail(),
				((0.05 * brandAwareness.getWannabes_BrandAwareness())+ (segment_pi.getWannabes_pi()))));
		
		thisBrandGSSegMarkShare.setSegStrugglersMS(Math.min(thisBrandGSSegAvail.getSegStrugglersAvail(),
				((0.05 * brandAwareness.getStrugglers_BrandAwareness())+ (segment_pi.getStrugglers_pi()))));
		
		thisBrandGSSegMarkShare.setSegDeprivedMS(Math.min(thisBrandGSSegAvail.getSegDeprivedAvail(),
				((0.05 * brandAwareness.getDeprived_BrandAwareness())+ (segment_pi.getDeprived_pi()))));
		
		return thisBrandGSSegMarkShare;
	}

	
	private KiranaStoreSegMarketShare getKiranaStoreSegmentMarketShare(
			Brand brand, int currPeriod, KiranaStoreSegAvailability thisBrandKSSegAvail, 
			PurchaseIntention segment_pi, IAdvBrandAwareness brandAwareness) {
		

		KiranaStoreSegMarketShare thisBrandKSSegMarkShare = new KiranaStoreSegMarketShare();
		
		thisBrandKSSegMarkShare.setBrand(brand);
		
		thisBrandKSSegMarkShare.setSegBlueBloodsMS(Math.min(thisBrandKSSegAvail.getSegBlueBloodsAvail(),
				((0.05 * brandAwareness.getBluebloods_BrandAwareness())+ (segment_pi.getBluebloods_pi()))));
		
		thisBrandKSSegMarkShare.setSegRafflesMS(Math.min(thisBrandKSSegAvail.getSegRafflesAvail(),
				((0.05 * brandAwareness.getRaffles_BrandAwareness())+ (segment_pi.getRaffles_pi()))));
		
		thisBrandKSSegMarkShare.setSegWannabesMS(Math.min(thisBrandKSSegAvail.getSegWannabesAvail(),
				((0.05 * brandAwareness.getWannabes_BrandAwareness())+ (segment_pi.getWannabes_pi()))));
		
		thisBrandKSSegMarkShare.setSegStrugglersMS(Math.min(thisBrandKSSegAvail.getSegStrugglersAvail(),
				((0.05 * brandAwareness.getStrugglers_BrandAwareness())+ (segment_pi.getStrugglers_pi()))));
		
		thisBrandKSSegMarkShare.setSegDeprivedMS(Math.min(thisBrandKSSegAvail.getSegDeprivedAvail(),
				((0.05 * brandAwareness.getDeprived_BrandAwareness())+ (segment_pi.getDeprived_pi()))));
		
		return thisBrandKSSegMarkShare;
	}

	
	
	private ChannelAllocation getChannelAllocationForThisBrand(Brand brand,
			int currPeriod) {
		
		ChannelAllocation thisBrandChannelAllocation = new ChannelAllocation();
		SalesForce thisBrandSalesForce = salesForceService.getSalesForceForBrand(brand);
		
		thisBrandChannelAllocation.setSupermarketAllocation(thisBrandSalesForce.getSupermarket_sf()/
				(thisBrandSalesForce.getSupermarket_sf() + thisBrandSalesForce.getGeneralStore_sf() + 
						thisBrandSalesForce.getKiranaStore_sf()));
		
		thisBrandChannelAllocation.setGeneralStoreAllocation(thisBrandSalesForce.getGeneralStore_sf()/
				(thisBrandSalesForce.getSupermarket_sf() + thisBrandSalesForce.getGeneralStore_sf() + 
						thisBrandSalesForce.getKiranaStore_sf()));
		
		thisBrandChannelAllocation.setKiranaStoreAllocation(thisBrandSalesForce.getKiranaStore_sf()/
				(thisBrandSalesForce.getSupermarket_sf() + thisBrandSalesForce.getGeneralStore_sf() + 
						thisBrandSalesForce.getKiranaStore_sf()));
		
		thisBrandChannelAllocation.setBrand(brand);
		
		return thisBrandChannelAllocation;
	}

	
	private ChannelAvailability getChannelAvailabilityForThisBrand(Brand brand,
			int currPeriod, ChannelAllocation thisBrandCAllocation, SegmentConstants superMarketDemandCC,
			SegmentConstants generalStrDemandCC, SegmentConstants kiranaStrDemandCC) {
	
		ChannelAvailability thisBrandCAvailability = new ChannelAvailability();
		BrandSpecs brandSpecs = brandSpecsService.getBrandSpecsOnBrand(brand);
		DistributionCoverage thisBrandDC = 
			distributionCoverageService.getDistributionCoverageForBrand(brand);
			
		
		double supermarketAvailability = 0, generalStoreAvailability = 0, 
			kiranaStoreAvailability = 0;
		
		supermarketAvailability = 
			Math.min(thisBrandCAllocation.getSupermarketAllocation() * brandSpecs.getProductionLevel(), 
					thisBrandDC.getSupermarket_dc() * 
					(superMarketDemandCC.getSegBlueBloods() + superMarketDemandCC.getSegRaffles() +
							superMarketDemandCC.getSegWannabes() + superMarketDemandCC.getSegStrugglers() + 
							superMarketDemandCC.getSegDeprived()));
		
		generalStoreAvailability = 
			Math.min(thisBrandCAllocation.getGeneralStoreAllocation() * brandSpecs.getProductionLevel(), 
					thisBrandDC.getGeneralStore_dc() * 
					(generalStrDemandCC.getSegBlueBloods() + generalStrDemandCC.getSegRaffles() +
							generalStrDemandCC.getSegWannabes() + generalStrDemandCC.getSegStrugglers() + 
							generalStrDemandCC.getSegDeprived()));
		
		kiranaStoreAvailability =
			Math.min(thisBrandCAllocation.getKiranaStoreAllocation() * brandSpecs.getProductionLevel(), 
					thisBrandDC.getKiranaStore_dc() * 
					(kiranaStrDemandCC.getSegBlueBloods() + kiranaStrDemandCC.getSegRaffles() +
							kiranaStrDemandCC.getSegWannabes() + kiranaStrDemandCC.getSegStrugglers() + 
							kiranaStrDemandCC.getSegDeprived()));

		
		thisBrandCAvailability.setSupermarketAvailability(supermarketAvailability);
		thisBrandCAvailability.setGeneralStoreAvailability(generalStoreAvailability);
		thisBrandCAvailability.setKiranaStoreAvailability(kiranaStoreAvailability);
		thisBrandCAvailability.setBrand(brand);
		
		
		return thisBrandCAvailability;
	}

	
	
	private SuperMarketSegAvailability getSuperMarketSegmentAvail(Brand brand,
			int currPeriod, ChannelAvailability thisBrandCAvailability, SegmentConstants superMarketDemandCC) {
		
		SuperMarketSegAvailability smSegAvail = new SuperMarketSegAvailability();
		double blueBloodSegAvail = 0, rafflesSegAvail = 0, wannabesSegAvail = 0,
			strugglersSegAvail = 0, deprivedSegAvail = 0;
		
		PurchaseIntention segmentPI = purchaseIntentionService.getPurchaseIntSegForBrand(brand);
		
		blueBloodSegAvail = (thisBrandCAvailability.getSupermarketAvailability() * segmentPI.getBluebloods_pi())/
			((segmentPI.getBluebloods_pi() * superMarketDemandCC.getSegBlueBloods())+ 
					(segmentPI.getRaffles_pi() * superMarketDemandCC.getSegRaffles()) +
					(segmentPI.getWannabes_pi() * superMarketDemandCC.getSegWannabes()) +
					(segmentPI.getStrugglers_pi() * superMarketDemandCC.getSegStrugglers()) +
					(segmentPI.getDeprived_pi() * superMarketDemandCC.getSegDeprived()));
		
		rafflesSegAvail = (thisBrandCAvailability.getSupermarketAvailability() * segmentPI.getRaffles_pi())/
			((segmentPI.getBluebloods_pi() * superMarketDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * superMarketDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * superMarketDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * superMarketDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * superMarketDemandCC.getSegDeprived()));
		
		wannabesSegAvail = (thisBrandCAvailability.getSupermarketAvailability() * segmentPI.getWannabes_pi())/
			((segmentPI.getBluebloods_pi() * superMarketDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * superMarketDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * superMarketDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * superMarketDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * superMarketDemandCC.getSegDeprived()));
		
		strugglersSegAvail = (thisBrandCAvailability.getSupermarketAvailability() * segmentPI.getStrugglers_pi())/
			((segmentPI.getBluebloods_pi() * superMarketDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * superMarketDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * superMarketDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * superMarketDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * superMarketDemandCC.getSegDeprived()));
		
		deprivedSegAvail = (thisBrandCAvailability.getSupermarketAvailability() * segmentPI.getDeprived_pi())/
			((segmentPI.getBluebloods_pi() * superMarketDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * superMarketDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * superMarketDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * superMarketDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * superMarketDemandCC.getSegDeprived()));
		
		smSegAvail.setBrand(brand);
		smSegAvail.setSegBlueBloodsAvail(blueBloodSegAvail);
		smSegAvail.setSegRafflesAvail(rafflesSegAvail);
		smSegAvail.setSegWannabesAvail(wannabesSegAvail);
		smSegAvail.setSegStrugglersAvail(strugglersSegAvail);
		smSegAvail.setSegDeprivedAvail(deprivedSegAvail);
		
		
		return smSegAvail;
	}

	private GenStoreSegAvailability getGenStoreSegmentAvail(Brand brand, int currPeriod, 
			ChannelAvailability thisBrandCAvailability, SegmentConstants generalStrDemandCC) {
		
		GenStoreSegAvailability genStrSegAvail = new GenStoreSegAvailability();
		double blueBloodSegAvail = 0, rafflesSegAvail = 0, wannabesSegAvail = 0,
			strugglersSegAvail = 0, deprivedSegAvail = 0;
		
		PurchaseIntention segmentPI = purchaseIntentionService.getPurchaseIntSegForBrand(brand);
		
		blueBloodSegAvail = (thisBrandCAvailability.getGeneralStoreAvailability() * segmentPI.getBluebloods_pi())/
			((segmentPI.getBluebloods_pi() * generalStrDemandCC.getSegBlueBloods())+ 
					(segmentPI.getRaffles_pi() * generalStrDemandCC.getSegRaffles()) +
					(segmentPI.getWannabes_pi() * generalStrDemandCC.getSegWannabes()) +
					(segmentPI.getStrugglers_pi() * generalStrDemandCC.getSegStrugglers()) +
					(segmentPI.getDeprived_pi() * generalStrDemandCC.getSegDeprived()));
		
		rafflesSegAvail = (thisBrandCAvailability.getGeneralStoreAvailability() * segmentPI.getRaffles_pi())/
			((segmentPI.getBluebloods_pi() * generalStrDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * generalStrDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * generalStrDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * generalStrDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * generalStrDemandCC.getSegDeprived()));
		
		wannabesSegAvail = (thisBrandCAvailability.getGeneralStoreAvailability() * segmentPI.getWannabes_pi())/
			((segmentPI.getBluebloods_pi() * generalStrDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * generalStrDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * generalStrDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * generalStrDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * generalStrDemandCC.getSegDeprived()));
		
		strugglersSegAvail = (thisBrandCAvailability.getGeneralStoreAvailability() * segmentPI.getStrugglers_pi())/
			((segmentPI.getBluebloods_pi() * generalStrDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * generalStrDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * generalStrDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * generalStrDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * generalStrDemandCC.getSegDeprived()));
		
		deprivedSegAvail = (thisBrandCAvailability.getGeneralStoreAvailability() * segmentPI.getDeprived_pi())/
			((segmentPI.getBluebloods_pi() * generalStrDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * generalStrDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * generalStrDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * generalStrDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * generalStrDemandCC.getSegDeprived()));
		
		genStrSegAvail.setBrand(brand);
		genStrSegAvail.setSegBlueBloodsAvail(blueBloodSegAvail);
		genStrSegAvail.setSegRafflesAvail(rafflesSegAvail);
		genStrSegAvail.setSegWannabesAvail(wannabesSegAvail);
		genStrSegAvail.setSegStrugglersAvail(strugglersSegAvail);
		genStrSegAvail.setSegDeprivedAvail(deprivedSegAvail);
		
		
		return genStrSegAvail;

	}

	private KiranaStoreSegAvailability getKiranaStoreSegmentAvail(Brand brand, int currPeriod, 
			ChannelAvailability thisBrandCAvailability, SegmentConstants kiranaStrDemandCC) {
		
		KiranaStoreSegAvailability kiranaStrSegAvail = new KiranaStoreSegAvailability();
		double blueBloodSegAvail = 0, rafflesSegAvail = 0, wannabesSegAvail = 0,
			strugglersSegAvail = 0, deprivedSegAvail = 0;
		
		PurchaseIntention segmentPI = purchaseIntentionService.getPurchaseIntSegForBrand(brand);
		
		blueBloodSegAvail = (thisBrandCAvailability.getKiranaStoreAvailability() * segmentPI.getBluebloods_pi())/
			((segmentPI.getBluebloods_pi() * kiranaStrDemandCC.getSegBlueBloods())+ 
					(segmentPI.getRaffles_pi() * kiranaStrDemandCC.getSegRaffles()) +
					(segmentPI.getWannabes_pi() * kiranaStrDemandCC.getSegWannabes()) +
					(segmentPI.getStrugglers_pi() * kiranaStrDemandCC.getSegStrugglers()) +
					(segmentPI.getDeprived_pi() * kiranaStrDemandCC.getSegDeprived()));
		
		rafflesSegAvail = (thisBrandCAvailability.getKiranaStoreAvailability() * segmentPI.getRaffles_pi())/
			((segmentPI.getBluebloods_pi() * kiranaStrDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * kiranaStrDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * kiranaStrDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * kiranaStrDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * kiranaStrDemandCC.getSegDeprived()));
		
		wannabesSegAvail = (thisBrandCAvailability.getKiranaStoreAvailability() * segmentPI.getWannabes_pi())/
			((segmentPI.getBluebloods_pi() * kiranaStrDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * kiranaStrDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * kiranaStrDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * kiranaStrDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * kiranaStrDemandCC.getSegDeprived()));
		
		strugglersSegAvail = (thisBrandCAvailability.getKiranaStoreAvailability() * segmentPI.getStrugglers_pi())/
			((segmentPI.getBluebloods_pi() * kiranaStrDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * kiranaStrDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * kiranaStrDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * kiranaStrDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * kiranaStrDemandCC.getSegDeprived()));
		
		deprivedSegAvail = (thisBrandCAvailability.getKiranaStoreAvailability() * segmentPI.getDeprived_pi())/
			((segmentPI.getBluebloods_pi() * kiranaStrDemandCC.getSegBlueBloods())+ 
				(segmentPI.getRaffles_pi() * kiranaStrDemandCC.getSegRaffles()) +
				(segmentPI.getWannabes_pi() * kiranaStrDemandCC.getSegWannabes()) +
				(segmentPI.getStrugglers_pi() * kiranaStrDemandCC.getSegStrugglers()) +
				(segmentPI.getDeprived_pi() * kiranaStrDemandCC.getSegDeprived()));
		
		kiranaStrSegAvail.setBrand(brand);
		kiranaStrSegAvail.setSegBlueBloodsAvail(blueBloodSegAvail);
		kiranaStrSegAvail.setSegRafflesAvail(rafflesSegAvail);
		kiranaStrSegAvail.setSegWannabesAvail(wannabesSegAvail);
		kiranaStrSegAvail.setSegStrugglersAvail(strugglersSegAvail);
		kiranaStrSegAvail.setSegDeprivedAvail(deprivedSegAvail);
		
		
		return kiranaStrSegAvail;

	}
}
