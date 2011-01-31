package com.marklabs.purchaseIntention;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brandAdvertisement.IAdvBrandAwareness;
import com.marklabs.brandAdvertisement.IBrandAdvertisementService;
import com.marklabs.brands.Brand;
import com.marklabs.perceptualObj.FMDSValues;
import com.marklabs.perceptualObj.IMDSValueService;
import com.marklabs.researchProject.IResearchProjectService;
import com.marklabs.researchProject.ResearchProject;
import com.marklabs.teams.Team;
import com.marklabs.utils.IGlobalConstantsService;
import com.marklabs.utils.ISegmentConstantsService;
import com.marklabs.utils.SegmentConstants;

/**
 * This class is responsible for coordinating the transition of Purchase Intentions from 1 period to another.
 * This class will do only the processing and will in turn use the purchaseIntentionService 
 * 		and purchaseIntentionConstantService to save/retrieve PurchaseIntentions/PurchaseIntentionConstants
 * 
 * @author Tapan
 * @date 05/22/2010
 */
public class PurchaseIntentionTransitionService extends HibernateDaoSupport 
	implements IPurchaseIntentionTransitionService {

	IResearchProjectService researchProjectService;
	IGlobalConstantsService globalConstantsService;	
	IPurchaseIntentionConstantService purchaseIntentionConstantService;
	IMDSValueService mdsValueService;
	IBrandAdvertisementService brandAdvertisementService;
	IPurchaseIntentionService purchaseIntentionService;
	ISegmentConstantsService segmentConstantsService;
	
	
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
	 * @return the mdsValueService
	 */
	public IMDSValueService getMdsValueService() {
		return mdsValueService;
	}

	/**
	 * @param mdsValueService the mdsValueService to set
	 */
	public void setMdsValueService(IMDSValueService mdsValueService) {
		this.mdsValueService = mdsValueService;
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
	 * @return the purchaseIntentionConstantService
	 */
	public IPurchaseIntentionConstantService getPurchaseIntentionConstantService() {
		return purchaseIntentionConstantService;
	}

	/**
	 * @param purchaseIntentionConstantService the purchaseIntentionConstantService to set
	 */
	public void setPurchaseIntentionConstantService(
			IPurchaseIntentionConstantService purchaseIntentionConstantService) {
		this.purchaseIntentionConstantService = purchaseIntentionConstantService;
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
	 * Function responsible for calculating Purchase Intentions for Brands during Transition.
	 */
	public void transitionPurchaseIntentionForTeam (Team selectedTeam,
			String currentPeriod) {
		
		int currPeriod = Integer.parseInt(currentPeriod); 
		
		//Fetching the MDSSegmentIdealMapValueMap for all Segments and Current Period
		MDSSegmentIdealValueMap mdsSegIdealValueMap_bb = 
			purchaseIntentionConstantService.getMDSSegmentIdealValueMap(
					globalConstantsService.getValueByName("BLUE_BLOODS"), currPeriod);
		
		MDSSegmentIdealValueMap mdsSegIdealValueMap_raffles = 
			purchaseIntentionConstantService.getMDSSegmentIdealValueMap(
					globalConstantsService.getValueByName("RAFFLES"), currPeriod);
		
		MDSSegmentIdealValueMap mdsSegIdealValueMap_wann = 
			purchaseIntentionConstantService.getMDSSegmentIdealValueMap(
					globalConstantsService.getValueByName("WANNABES"), currPeriod);
		
		MDSSegmentIdealValueMap mdsSegIdealValueMap_str = 
			purchaseIntentionConstantService.getMDSSegmentIdealValueMap(
					globalConstantsService.getValueByName("STRUGGLERS"), currPeriod);
		
		MDSSegmentIdealValueMap mdsSegIdealValueMap_dep = 
			purchaseIntentionConstantService.getMDSSegmentIdealValueMap(
					globalConstantsService.getValueByName("DEPRIVED"), currPeriod);
		
		
		//Fetching the MDSSegmentRelativeImportance for all Segemnts and Current Period 
		MDSSegmentRelativeImp mdsSegRelativeImp_bb = 
			purchaseIntentionConstantService.getMDSSegmentRelativeImp(
					globalConstantsService.getValueByName("BLUE_BLOODS"), currPeriod);
		
		MDSSegmentRelativeImp mdsSegRelativeImp_raffles = 
			purchaseIntentionConstantService.getMDSSegmentRelativeImp(
					globalConstantsService.getValueByName("RAFFLES"), currPeriod);
		
		MDSSegmentRelativeImp mdsSegRelativeImp_wann = 
			purchaseIntentionConstantService.getMDSSegmentRelativeImp(
					globalConstantsService.getValueByName("WANNABES"), currPeriod);
		
		MDSSegmentRelativeImp mdsSegRelativeImp_str = 
			purchaseIntentionConstantService.getMDSSegmentRelativeImp(
					globalConstantsService.getValueByName("STRUGGLERS"), currPeriod);
		
		MDSSegmentRelativeImp mdsSegRelativeImp_dep = 
			purchaseIntentionConstantService.getMDSSegmentRelativeImp(
					globalConstantsService.getValueByName("DEPRIVED"), currPeriod);
		
		HashMap brandEuclideanMap = new HashMap();
		HashMap brandExponentialValMap = new HashMap();
		HashMap brandShareMap = new HashMap();
		HashMap brandIPurchaseIntMap = new HashMap();
		HashMap brandFPurchaseIntMap = new HashMap();
		
		HashMap<Brand, PurchaseIntentionChannel> channelFPurchaseIntentionMap = 
			new HashMap<Brand, PurchaseIntentionChannel>();
		
		// Now calculating the Purchase Intention Euclidean Dist. for all Brands for the Team
		ResearchProject[] researchProjects = 
			researchProjectService.getResearchProjectsForTeamCurrentPeriod(selectedTeam);
		if (researchProjects != null && researchProjects.length > 0) {
			for (int i = 0;i < researchProjects.length; i++) {
				Set projectBrands = researchProjects[i].getBrands();
				Iterator itr = projectBrands.iterator();
				while (itr.hasNext()) {
					Brand brand = (Brand)itr.next();
					
					// Final MDS Dimensions
					FMDSValues fMDSValue = mdsValueService.getFMDSDimensionForBrand(brand);
					if (fMDSValue != null ) {
						// Calculating Euclidean distances for each Brand
						PI_BrandEuclideanDist brandEuclidean = new PI_BrandEuclideanDist();
						brandEuclidean.setBrand(brand);
						
						double blueBlood_ED = Math.sqrt(mdsSegRelativeImp_bb.getEconomyValue() * 
							Math.pow((fMDSValue.getEconomicValue() - mdsSegIdealValueMap_bb.getEconomyValue()), 2) +
							mdsSegRelativeImp_bb.getQualityValue() * 
							Math.pow((fMDSValue.getQualityValue() - mdsSegIdealValueMap_bb.getQualityValue()), 2) +
							mdsSegRelativeImp_bb.getAppealValue() * 
							Math.pow((fMDSValue.getAppealValue() - mdsSegIdealValueMap_bb.getAppealValue()), 2));
						
						double raffles_ED = Math.sqrt(mdsSegRelativeImp_raffles.getEconomyValue() * 
								Math.pow((fMDSValue.getEconomicValue() - mdsSegIdealValueMap_raffles.getEconomyValue()), 2) +
								mdsSegRelativeImp_raffles.getQualityValue() * 
								Math.pow((fMDSValue.getQualityValue() - mdsSegIdealValueMap_raffles.getQualityValue()), 2) +
								mdsSegRelativeImp_raffles.getAppealValue() * 
								Math.pow((fMDSValue.getAppealValue() - mdsSegIdealValueMap_raffles.getAppealValue()), 2));
							
						double wannabes_ED = Math.sqrt(mdsSegRelativeImp_wann.getEconomyValue() * 
								Math.pow((fMDSValue.getEconomicValue() - mdsSegIdealValueMap_wann.getEconomyValue()), 2) +
								mdsSegRelativeImp_wann.getQualityValue() * 
								Math.pow((fMDSValue.getQualityValue() - mdsSegIdealValueMap_wann.getQualityValue()), 2) +
								mdsSegRelativeImp_wann.getAppealValue() * 
								Math.pow((fMDSValue.getAppealValue() - mdsSegIdealValueMap_wann.getAppealValue()), 2));
							
						double strugglers_ED = Math.sqrt(mdsSegRelativeImp_str.getEconomyValue() * 
								Math.pow((fMDSValue.getEconomicValue() - mdsSegIdealValueMap_str.getEconomyValue()), 2) +
								mdsSegRelativeImp_str.getQualityValue() * 
								Math.pow((fMDSValue.getQualityValue() - mdsSegIdealValueMap_str.getQualityValue()), 2) +
								mdsSegRelativeImp_str.getAppealValue() * 
								Math.pow((fMDSValue.getAppealValue() - mdsSegIdealValueMap_str.getAppealValue()), 2));
							
						double deprived_ED = Math.sqrt(mdsSegRelativeImp_dep.getEconomyValue() * 
								Math.pow((fMDSValue.getEconomicValue() - mdsSegIdealValueMap_dep.getEconomyValue()), 2) +
								mdsSegRelativeImp_dep.getQualityValue() * 
								Math.pow((fMDSValue.getQualityValue() - mdsSegIdealValueMap_dep.getQualityValue()), 2) +
								mdsSegRelativeImp_dep.getAppealValue() * 
								Math.pow((fMDSValue.getAppealValue() - mdsSegIdealValueMap_dep.getAppealValue()), 2));
							
						
						brandEuclidean.setBlueBloodED(blueBlood_ED);
						brandEuclidean.setRafflesED(raffles_ED);
						brandEuclidean.setWannabesED(wannabes_ED);
						brandEuclidean.setStrugglersED(strugglers_ED);
						brandEuclidean.setDeprivedED(deprived_ED);
						
						brandEuclideanMap.put(brand, brandEuclidean);
						
					}
				}
			}
		}
		
		// Now calculating the Purchase Intention Exponential values for all Brands for the Team 
		brandExponentialValMap = getPI_ExponentialValuesMap(brandEuclideanMap);
		
		// Now calculating the Purchase Intention Share for all Brands for the Team
		brandShareMap = getPI_ShareMap(brandExponentialValMap);
		
		//Now calculating Intermediate Purchase Intention for all Brands for the Team
		brandIPurchaseIntMap = getIntermediatePurchaseInt(brandShareMap);
		
		// Now calculating the Final Purchase Intention for all Brands for the Team
		brandFPurchaseIntMap = getFinalPurchaseIntention(brandIPurchaseIntMap);
		
		/**
		 *  Now We need to check, if sum of purchase Intention for all brands in a Segment
		 *  	is 100. If yes, fine. If not, then the Purchase Intentions needs to be normalized
		 *  	for all Segments, such that the sum of Purchase Intention for all Brands in a Segment 
		 *  	sums upto 100.
		 *  
		 *  Running this 10 times in a loop, such that, this gets normalized.
		 */
		
		for (int i = 0; i < 10; i++) {
			brandFPurchaseIntMap = getNormalizedFinalPurchaseIntention(brandFPurchaseIntMap);
		}
		
		//Saving Final Purchase Intentions for all Brands
		saveFinalPurchaseIntention(brandFPurchaseIntMap);
		
		//Calculating the Channel Final Purchase Intention for all Brands
		channelFPurchaseIntentionMap = getFinalChannelPurchaseIntention(brandFPurchaseIntMap, currPeriod);
		
		// Saving the Channel Purchase Intention for all Brands
		saveFinalChannelPurchaseIntention(channelFPurchaseIntentionMap);
	}
	
	
	
	private void saveFinalChannelPurchaseIntention(
			HashMap<Brand, PurchaseIntentionChannel> channelFPurchaseIntentionMap) {
		
		Iterator<Map.Entry<Brand, PurchaseIntentionChannel>> itr = channelFPurchaseIntentionMap.entrySet().iterator();
		while (itr.hasNext()) {
			Map.Entry<Brand, PurchaseIntentionChannel> entry = itr.next();
			
			purchaseIntentionService.saveChannelPurchaseIntention(entry.getValue());
			
		}
		
		
	}

	private HashMap<Brand, PurchaseIntentionChannel> getFinalChannelPurchaseIntention(
			HashMap<Brand, PurchaseIntention> brandFPurchaseIntMap, int currentPeriod) {
		
		double superMarket_cpi = 0, generalStore_cpi = 0, kiranaStore_cpi = 0;

		HashMap<Brand, PurchaseIntentionChannel> channelPIMap = new HashMap<Brand, PurchaseIntentionChannel>();
		
		Iterator<Map.Entry<Brand, PurchaseIntention> > itr = brandFPurchaseIntMap.entrySet().iterator();
		while (itr.hasNext()) {
			Map.Entry<Brand, PurchaseIntention> entry = itr.next();
			
			Brand thisBrand = entry.getKey();
			PurchaseIntention thisBrandPI = entry.getValue();
			
			PurchaseIntentionChannel channelPI = new PurchaseIntentionChannel();
			
			SegmentConstants segmentConstSuperMarket = 
				segmentConstantsService.getSegmentConstantByNameAndPeriod("SUPERMARKETS_SHARE", currentPeriod);	
			superMarket_cpi = (thisBrandPI.getBluebloods_pi() * segmentConstSuperMarket.getSegBlueBloods()) +
				(thisBrandPI.getRaffles_pi() * segmentConstSuperMarket.getSegRaffles()) +
				(thisBrandPI.getWannabes_pi() * segmentConstSuperMarket.getSegWannabes()) +
				(thisBrandPI.getStrugglers_pi() * segmentConstSuperMarket.getSegStrugglers()) +
				(thisBrandPI.getDeprived_pi() * segmentConstSuperMarket.getSegDeprived());
						
			SegmentConstants segmentConstGeneralStore = 
				segmentConstantsService.getSegmentConstantByNameAndPeriod("GENERALSTORES_SHARE", currentPeriod);	
			generalStore_cpi = (thisBrandPI.getBluebloods_pi() * segmentConstGeneralStore.getSegBlueBloods()) +
			(thisBrandPI.getRaffles_pi() * segmentConstGeneralStore.getSegRaffles()) +
			(thisBrandPI.getWannabes_pi() * segmentConstGeneralStore.getSegWannabes()) +
			(thisBrandPI.getStrugglers_pi() * segmentConstGeneralStore.getSegStrugglers()) +
			(thisBrandPI.getDeprived_pi() * segmentConstGeneralStore.getSegDeprived());
			
			SegmentConstants segmentConstKiranaStore = 
				segmentConstantsService.getSegmentConstantByNameAndPeriod("KIRANASTORES_SHARE", currentPeriod);	
			kiranaStore_cpi = (thisBrandPI.getBluebloods_pi() * segmentConstKiranaStore.getSegBlueBloods()) +
			(thisBrandPI.getRaffles_pi() * segmentConstKiranaStore.getSegRaffles()) +
			(thisBrandPI.getWannabes_pi() * segmentConstKiranaStore.getSegWannabes()) +
			(thisBrandPI.getStrugglers_pi() * segmentConstKiranaStore.getSegStrugglers()) +
			(thisBrandPI.getDeprived_pi() * segmentConstKiranaStore.getSegDeprived());
			
			channelPI.setBrand(thisBrandPI.getBrand());
			channelPI.setSuperMarkets_pi(superMarket_cpi);
			channelPI.setGeneralStores_pi(generalStore_cpi);
			channelPI.setKiranaStores_pi(kiranaStore_cpi);
			
			channelPIMap.put(thisBrand, channelPI);
			
		}
		
		return channelPIMap;
	}

	/**
	 * 
	 * @param brandEuclideanMap
	 * @return
	 */
	private HashMap getPI_ExponentialValuesMap(HashMap brandEuclideanMap) {
		HashMap brandExponentialValMap = new HashMap();
		if (brandEuclideanMap != null) {
			Iterator itr = brandEuclideanMap.entrySet().iterator();
			while (itr.hasNext()) {
				Map.Entry entry = (Map.Entry) itr.next();
				PI_BrandEuclideanDist brandEuclideanDist = (PI_BrandEuclideanDist)entry.getValue();
				
				PI_BrandExponentialValue brandExponentialVal = new PI_BrandExponentialValue();
				brandExponentialVal.setBrand(brandEuclideanDist.getBrand());
				
				if (brandEuclideanDist.getBlueBloodED() <= 2) 
					brandExponentialVal.setBlueBloodExpo(1 - ((Math.pow(brandEuclideanDist.getBlueBloodED(), 2))/50.0));
				else
					brandExponentialVal.setBlueBloodExpo(0.5 - 
							(0.5 * (Math.sqrt((brandEuclideanDist.getBlueBloodED() - 2)/28.0))));
				
				if (brandEuclideanDist.getRafflesED() <= 2) 
					brandExponentialVal.setRafflesExpo(1 - ((Math.pow(brandEuclideanDist.getRafflesED(), 2))/50.0));
				else
					brandExponentialVal.setRafflesExpo(0.5 - 
							(0.5 * (Math.sqrt((brandEuclideanDist.getRafflesED() - 2)/28.0))));
				
				if (brandEuclideanDist.getWannabesED() <= 2) 
					brandExponentialVal.setWannabesExpo(1 - ((Math.pow(brandEuclideanDist.getWannabesED(), 2))/50.0));
				else
					brandExponentialVal.setWannabesExpo(0.5 - 
							(0.5 * (Math.sqrt((brandEuclideanDist.getWannabesED() - 2)/28.0))));
			
				if (brandEuclideanDist.getStrugglersED() <= 2) 
					brandExponentialVal.setStrugglersExpo(1 - ((Math.pow(brandEuclideanDist.getStrugglersED(), 2))/50.0));
				else
					brandExponentialVal.setStrugglersExpo(0.5 - 
							(0.5 * (Math.sqrt((brandEuclideanDist.getStrugglersED() - 2)/28.0))));
				
				if (brandEuclideanDist.getDeprivedED() <= 2) 
					brandExponentialVal.setDeprivedExpo(1 - ((Math.pow(brandEuclideanDist.getDeprivedED(), 2))/50.0));
				else
					brandExponentialVal.setDeprivedExpo(0.5 - 
							(0.5 * (Math.sqrt((brandEuclideanDist.getDeprivedED() - 2)/28.0))));
				
				brandExponentialValMap.put((Brand)entry.getKey(), brandExponentialVal);
				
			}
			
			
		}
		return brandExponentialValMap;
	}
	
	/**
	 * 
	 * @param brandExponentialValMap
	 * @return
	 */
	private HashMap getPI_ShareMap(HashMap brandExponentialValMap) {
		HashMap brandShareMap = new HashMap();
		double sumBrandExpoValue_bb = 0, sumBrandExpoValue_raffles = 0, sumBrandExpoValue_wannabes = 0,
		sumBrandExpoValue_strugglers = 0, sumBrandExpoValue_deprived = 0;
		
		if (brandExponentialValMap != null) {
			Iterator itr = brandExponentialValMap.entrySet().iterator();
			
			//Calculating the Segment Sum of Brand Exponential Values
			while (itr.hasNext()) {
				Map.Entry entry = (Map.Entry) itr.next();
				PI_BrandExponentialValue brandExponentialValue = (PI_BrandExponentialValue)entry.getValue();
				
				sumBrandExpoValue_bb = sumBrandExpoValue_bb + brandExponentialValue.getBlueBloodExpo();
				sumBrandExpoValue_raffles = sumBrandExpoValue_raffles + brandExponentialValue.getRafflesExpo();
				sumBrandExpoValue_wannabes = sumBrandExpoValue_wannabes + brandExponentialValue.getWannabesExpo();
				sumBrandExpoValue_strugglers = sumBrandExpoValue_strugglers + brandExponentialValue.getStrugglersExpo();
				sumBrandExpoValue_deprived = sumBrandExpoValue_deprived + brandExponentialValue.getDeprivedExpo();
			}
			
			// Calculating the Brand Share Map
			while (itr.hasNext()) {
				Map.Entry entry = (Map.Entry) itr.next();
				PI_BrandExponentialValue brandExponentialValue = (PI_BrandExponentialValue)entry.getValue();
			
				PI_BrandShare brandShare = new PI_BrandShare();
				brandShare.setBrand(brandExponentialValue.getBrand());
				
				brandShare.setBlueBloodShare(brandExponentialValue.getBlueBloodExpo()/sumBrandExpoValue_bb);
				brandShare.setRafflesShare(brandExponentialValue.getRafflesExpo()/sumBrandExpoValue_raffles);
				brandShare.setWannabesShare(brandExponentialValue.getWannabesExpo()/sumBrandExpoValue_wannabes);
				brandShare.setStrugglersShare(brandExponentialValue.getStrugglersExpo()/sumBrandExpoValue_strugglers);
				brandShare.setDeprivedShare(brandExponentialValue.getDeprivedExpo()/sumBrandExpoValue_deprived);
				
				brandShareMap.put((Brand) entry.getKey(), brandShare);
				
			}
			
		}
		
		return brandShareMap;
	}
	
	
	private HashMap getIntermediatePurchaseInt(HashMap brandShareMap) {
		
		HashMap brandIPurchaseIntMap = new HashMap();
		
		if (brandShareMap != null) {
			Iterator itr = brandShareMap.entrySet().iterator();
			
			while (itr.hasNext()) {
				Map.Entry entry = (Map.Entry) itr.next();
				PI_BrandShare brandShare = (PI_BrandShare)entry.getValue();
				Brand brand = (Brand) entry.getKey();
				
				// Get Brand Awareness for this Brand in the previous period
				IAdvBrandAwareness brandAwareness = brandAdvertisementService.getBrandAwareness(brand);
				
				PI_IPurchaseIntention iPurchaseIntention = new PI_IPurchaseIntention();
				iPurchaseIntention.setBrand(brandShare.getBrand());
				iPurchaseIntention.setBluebloods_ipi(Math.min(brandShare.getBlueBloodShare(), 
						(0.95 * brandAwareness.getBluebloods_BrandAwareness())));
				iPurchaseIntention.setRaffles_ipi(Math.min(brandShare.getRafflesShare(), 
						(0.95 * brandAwareness.getRaffles_BrandAwareness())));
				iPurchaseIntention.setWannabes_ipi(Math.min(brandShare.getWannabesShare(), 
						(0.95 * brandAwareness.getWannabes_BrandAwareness())));
				iPurchaseIntention.setStrugglers_ipi(Math.min(brandShare.getStrugglersShare(), 
						(0.95 * brandAwareness.getStrugglers_BrandAwareness())));
				iPurchaseIntention.setDeprived_ipi(Math.min(brandShare.getDeprivedShare(), 
						(0.95 * brandAwareness.getDeprived_BrandAwareness())));
				
				brandIPurchaseIntMap.put(brand, iPurchaseIntention);
			}
		}
		return brandIPurchaseIntMap;
	}
	
	private HashMap getFinalPurchaseIntention(HashMap brandIPurchaseIntMap) {
		HashMap brandFPurchaseIntMap = new HashMap();
		
		double sumIPurchaseInt_bb = 0, sumIPurchaseInt_raffles = 0, sumIPurchaseInt_wannabes = 0,
		sumIPurchaseInt_strug = 0, sumIPurchaseInt_dep = 0;
		
		double unchanged_sumIPurchaseInt_bb = 0, unchanged_sumIPurchaseInt_raffles = 0, 
			unchanged_sumIPurchaseInt_wannabes = 0, unchanged_sumIPurchaseInt_strug = 0, 
			unchanged_sumIPurchaseInt_dep = 0;
		
		Iterator itr = brandIPurchaseIntMap.entrySet().iterator();
				
		//Calculating the sum of Intermediate Purchase Intentions for all Brands
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			Brand thisBrand = (Brand) entry.getKey();
			PI_IPurchaseIntention iPurchaseIntention = (PI_IPurchaseIntention) entry.getValue();
			
			// calculating the sum of Intermediate Brand Purchase Intentions
			sumIPurchaseInt_bb = sumIPurchaseInt_bb + iPurchaseIntention.getBluebloods_ipi();
			sumIPurchaseInt_raffles = sumIPurchaseInt_raffles + iPurchaseIntention.getRaffles_ipi();
			sumIPurchaseInt_wannabes = sumIPurchaseInt_wannabes + iPurchaseIntention.getWannabes_ipi();
			sumIPurchaseInt_strug = sumIPurchaseInt_strug + iPurchaseIntention.getStrugglers_ipi();
			sumIPurchaseInt_dep = sumIPurchaseInt_dep + iPurchaseIntention.getDeprived_ipi();
		}
		
		//Calculating the sum of Unchanged Intermediate Purchase Intentions for all Brands
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			Brand thisBrand = (Brand) entry.getKey();
			PI_IPurchaseIntention iPurchaseIntention = (PI_IPurchaseIntention) entry.getValue();
			IAdvBrandAwareness thisBrandAwareness = brandAdvertisementService.getBrandAwareness(thisBrand);
			
			if (iPurchaseIntention.getBluebloods_ipi() != (0.95 * thisBrandAwareness.getBluebloods_BrandAwareness())) 
				unchanged_sumIPurchaseInt_bb = unchanged_sumIPurchaseInt_bb + iPurchaseIntention.getBluebloods_ipi();
			
			if (iPurchaseIntention.getRaffles_ipi() != (0.95 * thisBrandAwareness.getRaffles_BrandAwareness())) 
				unchanged_sumIPurchaseInt_raffles = unchanged_sumIPurchaseInt_raffles + iPurchaseIntention.getRaffles_ipi();
			
			if (iPurchaseIntention.getWannabes_ipi() != (0.95 * thisBrandAwareness.getWannabes_BrandAwareness())) 
				unchanged_sumIPurchaseInt_wannabes = unchanged_sumIPurchaseInt_wannabes + iPurchaseIntention.getWannabes_ipi();
			
			if (iPurchaseIntention.getStrugglers_ipi() != (0.95 * thisBrandAwareness.getStrugglers_BrandAwareness())) 
				unchanged_sumIPurchaseInt_strug = unchanged_sumIPurchaseInt_strug + iPurchaseIntention.getStrugglers_ipi();
			
			if (iPurchaseIntention.getDeprived_ipi() != (0.95 * thisBrandAwareness.getDeprived_BrandAwareness())) 
				unchanged_sumIPurchaseInt_dep = unchanged_sumIPurchaseInt_dep + iPurchaseIntention.getDeprived_ipi();
		}

		
		//Calculating the Final Purchase Intentions for all Brands
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			Brand thisBrand = (Brand) entry.getKey();
			PI_IPurchaseIntention iPurchaseIntention = (PI_IPurchaseIntention) entry.getValue();
			IAdvBrandAwareness thisBrandAwareness = brandAdvertisementService.getBrandAwareness(thisBrand);
			
			PurchaseIntention purchaseIntention = new PurchaseIntention();
			purchaseIntention.setBrand(iPurchaseIntention.getBrand());
			
			//Final Purchase Intention for Blue Bloods
			if (sumIPurchaseInt_bb != 100) {
				double diff = 100.0 - sumIPurchaseInt_bb;
				
				purchaseIntention.setBluebloods_pi(Math.min((0.95 * thisBrandAwareness.getBluebloods_BrandAwareness()), 
						(iPurchaseIntention.getBluebloods_ipi() + ((diff * iPurchaseIntention.getBluebloods_ipi())/unchanged_sumIPurchaseInt_bb))));
			}
			else
				purchaseIntention.setBluebloods_pi(iPurchaseIntention.getBluebloods_ipi());
			
			// Final Purchase Intention for Raffles
			if (sumIPurchaseInt_raffles != 100) {
				double diff = 100.0 - sumIPurchaseInt_raffles;
				
				purchaseIntention.setRaffles_pi(Math.min((0.95 * thisBrandAwareness.getRaffles_BrandAwareness()), 
						(iPurchaseIntention.getRaffles_ipi() + ((diff * iPurchaseIntention.getRaffles_ipi())/unchanged_sumIPurchaseInt_raffles))));
			}
			else
				purchaseIntention.setRaffles_pi(iPurchaseIntention.getRaffles_ipi());
			
			// Final Purchase Intention for Wannabes
			if (sumIPurchaseInt_wannabes != 100) {
				double diff = 100.0 - sumIPurchaseInt_wannabes;
				
				purchaseIntention.setWannabes_pi(Math.min((0.95 * thisBrandAwareness.getWannabes_BrandAwareness()), 
						(iPurchaseIntention.getWannabes_ipi() + ((diff * iPurchaseIntention.getWannabes_ipi())/unchanged_sumIPurchaseInt_wannabes))));
			}
			else
				purchaseIntention.setWannabes_pi(iPurchaseIntention.getWannabes_ipi());
			
			// Final Purchase Intention for Strugglers
			if (sumIPurchaseInt_strug != 100) {
				double diff = 100.0 - sumIPurchaseInt_strug;
				
				purchaseIntention.setStrugglers_pi(Math.min((0.95 * thisBrandAwareness.getStrugglers_BrandAwareness()), 
						(iPurchaseIntention.getStrugglers_ipi() + ((diff * iPurchaseIntention.getStrugglers_ipi())/unchanged_sumIPurchaseInt_strug))));
			}
			else
				purchaseIntention.setStrugglers_pi(iPurchaseIntention.getStrugglers_ipi());
			
			// Final Purchase Intention for Deprived
			if (sumIPurchaseInt_dep != 100) {
				double diff = 100.0 - sumIPurchaseInt_dep;
				
				purchaseIntention.setDeprived_pi(Math.min((0.95 * thisBrandAwareness.getDeprived_BrandAwareness()), 
						(iPurchaseIntention.getDeprived_ipi() + ((diff * iPurchaseIntention.getDeprived_ipi())/unchanged_sumIPurchaseInt_dep))));
			}
			else
				purchaseIntention.setDeprived_pi(iPurchaseIntention.getDeprived_ipi());
			
			brandFPurchaseIntMap.put(thisBrand, purchaseIntention);
		}
		
		return brandFPurchaseIntMap;
	}
	
	
	private HashMap<Brand, PurchaseIntention> getNormalizedFinalPurchaseIntention
			(HashMap<Brand, PurchaseIntention> brandFPurchaseIntMap) {
		
		HashMap<Brand, PurchaseIntention> normalizedPurchaseIntMap = new HashMap<Brand, PurchaseIntention>();
		
		double sumFPurchaseInt_bb = 0, sumFPurchaseInt_raffles = 0, sumFPurchaseInt_wannabes = 0,
		sumFPurchaseInt_strug = 0, sumFPurchaseInt_dep = 0;
		
		double unchanged_sumFPurchaseInt_bb = 0, unchanged_sumFPurchaseInt_raffles = 0, 
			unchanged_sumFPurchaseInt_wannabes = 0, unchanged_sumFPurchaseInt_strug = 0, 
			unchanged_sumFPurchaseInt_dep = 0;
		
		Iterator<Map.Entry<Brand, PurchaseIntention>> itr = brandFPurchaseIntMap.entrySet().iterator();
		
		//Calculating the sum of Purchase Intentions for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, PurchaseIntention> entry = (Map.Entry<Brand, PurchaseIntention>) itr.next();
			Brand thisBrand = entry.getKey();
			PurchaseIntention purchaseIntention =  entry.getValue();
			
			// calculating the sum of Brand Purchase Intentions
			sumFPurchaseInt_bb = sumFPurchaseInt_bb + purchaseIntention.getBluebloods_pi();
			sumFPurchaseInt_raffles = sumFPurchaseInt_raffles + purchaseIntention.getRaffles_pi();
			sumFPurchaseInt_wannabes = sumFPurchaseInt_wannabes + purchaseIntention.getWannabes_pi();
			sumFPurchaseInt_strug = sumFPurchaseInt_strug + purchaseIntention.getStrugglers_pi();
			sumFPurchaseInt_dep = sumFPurchaseInt_dep + purchaseIntention.getDeprived_pi();
		}
		
		//Calculating the sum of Unchanged Purchase Intentions for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, PurchaseIntention> entry = (Map.Entry<Brand, PurchaseIntention>) itr.next();
			Brand thisBrand = entry.getKey();
			PurchaseIntention purchaseIntention =  entry.getValue();
			IAdvBrandAwareness thisBrandAwareness = brandAdvertisementService.getBrandAwareness(thisBrand);
			
			if (purchaseIntention.getBluebloods_pi() != (0.95 * thisBrandAwareness.getBluebloods_BrandAwareness())) 
				unchanged_sumFPurchaseInt_bb = unchanged_sumFPurchaseInt_bb + purchaseIntention.getBluebloods_pi();
			
			if (purchaseIntention.getRaffles_pi() != (0.95 * thisBrandAwareness.getRaffles_BrandAwareness())) 
				unchanged_sumFPurchaseInt_raffles = unchanged_sumFPurchaseInt_raffles + purchaseIntention.getRaffles_pi();
			
			if (purchaseIntention.getWannabes_pi() != (0.95 * thisBrandAwareness.getWannabes_BrandAwareness())) 
				unchanged_sumFPurchaseInt_wannabes = unchanged_sumFPurchaseInt_wannabes + purchaseIntention.getWannabes_pi();
			
			if (purchaseIntention.getStrugglers_pi() != (0.95 * thisBrandAwareness.getStrugglers_BrandAwareness())) 
				unchanged_sumFPurchaseInt_strug = unchanged_sumFPurchaseInt_strug + purchaseIntention.getStrugglers_pi();
			
			if (purchaseIntention.getDeprived_pi() != (0.95 * thisBrandAwareness.getDeprived_BrandAwareness())) 
				unchanged_sumFPurchaseInt_dep = unchanged_sumFPurchaseInt_dep + purchaseIntention.getDeprived_pi();
		}

		//Calculating the Final Purchase Intentions for all Brands
		while (itr.hasNext()) {
			Map.Entry<Brand, PurchaseIntention> entry = (Map.Entry<Brand, PurchaseIntention>) itr.next();
			
			Brand thisBrand = entry.getKey();
			PurchaseIntention purchaseIntention = entry.getValue();
			IAdvBrandAwareness thisBrandAwareness = brandAdvertisementService.getBrandAwareness(thisBrand);
			
			PurchaseIntention normalizedPI = new PurchaseIntention();
			purchaseIntention.setBrand(purchaseIntention.getBrand());
			
			//Final Purchase Intention for Blue Bloods
			if (sumFPurchaseInt_bb != 100) {
				double diff = 100.0 - sumFPurchaseInt_bb;
				
				normalizedPI.setBluebloods_pi(Math.min((0.95 * thisBrandAwareness.getBluebloods_BrandAwareness()), 
						(purchaseIntention.getBluebloods_pi() + ((diff * purchaseIntention.getBluebloods_pi())/unchanged_sumFPurchaseInt_bb))));
			}
			else
				normalizedPI.setBluebloods_pi(purchaseIntention.getBluebloods_pi());
			
			// Final Purchase Intention for Raffles
			if (sumFPurchaseInt_raffles != 100) {
				double diff = 100.0 - sumFPurchaseInt_raffles;
				
				normalizedPI.setRaffles_pi(Math.min((0.95 * thisBrandAwareness.getRaffles_BrandAwareness()), 
						(purchaseIntention.getRaffles_pi() + ((diff * purchaseIntention.getRaffles_pi())/unchanged_sumFPurchaseInt_raffles))));
			}
			else
				normalizedPI.setRaffles_pi(purchaseIntention.getRaffles_pi());
			
			// Final Purchase Intention for Wannabes
			if (sumFPurchaseInt_wannabes != 100) {
				double diff = 100.0 - sumFPurchaseInt_wannabes;
				
				normalizedPI.setWannabes_pi(Math.min((0.95 * thisBrandAwareness.getWannabes_BrandAwareness()), 
						(purchaseIntention.getWannabes_pi() + ((diff * purchaseIntention.getWannabes_pi())/unchanged_sumFPurchaseInt_wannabes))));
			}
			else
				normalizedPI.setWannabes_pi(purchaseIntention.getWannabes_pi());
			
			// Final Purchase Intention for Strugglers
			if (sumFPurchaseInt_strug != 100) {
				double diff = 100.0 - sumFPurchaseInt_strug;
				
				normalizedPI.setStrugglers_pi(Math.min((0.95 * thisBrandAwareness.getStrugglers_BrandAwareness()), 
						(purchaseIntention.getStrugglers_pi() + ((diff * purchaseIntention.getStrugglers_pi())/unchanged_sumFPurchaseInt_strug))));
			}
			else
				normalizedPI.setStrugglers_pi(purchaseIntention.getStrugglers_pi());
			
			// Final Purchase Intention for Deprived
			if (sumFPurchaseInt_dep != 100) {
				double diff = 100.0 - sumFPurchaseInt_dep;
				
				normalizedPI.setDeprived_pi(Math.min((0.95 * thisBrandAwareness.getDeprived_BrandAwareness()), 
						(purchaseIntention.getDeprived_pi() + ((diff * purchaseIntention.getDeprived_pi())/unchanged_sumFPurchaseInt_dep))));
			}
			else
				normalizedPI.setDeprived_pi(purchaseIntention.getDeprived_pi());
			
			normalizedPurchaseIntMap.put(thisBrand, normalizedPI);
		}
	
		
		
		return normalizedPurchaseIntMap;
	}
	
	
	
	
	
	
	
	
	
	private void saveFinalPurchaseIntention(HashMap brandFPurchaseIntMap) {
		
		Iterator itr = brandFPurchaseIntMap.entrySet().iterator();
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			PurchaseIntention fPurchaseIntention = (PurchaseIntention) entry.getValue();
			
			purchaseIntentionService.saveBrandPurchaseIntention(fPurchaseIntention);
			
			
		}
	}

	
}
