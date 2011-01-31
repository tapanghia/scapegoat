package com.marklabs.perceptualObj;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brandAdvertisement.BrandAdvertisement;
import com.marklabs.brandAdvertisement.IAdvBrandAwareness;
import com.marklabs.brandAdvertisement.IBrandAdvertisementService;
import com.marklabs.brandSpecifications.BrandSpecs;
import com.marklabs.brandSpecifications.IBrandSpecsService;
import com.marklabs.brands.Brand;
import com.marklabs.researchProject.IResearchProjectService;
import com.marklabs.researchProject.ResearchProject;
import com.marklabs.teams.Team;

/**
 * 
 * Important Note: A few functions from this Transition Service have been commented out, because of the changes made to the PerceptualObj table
 * 		schema. This transition Service is not being used currently. Currently the transition is carried out using Excel.
 * Please uncomment/rewrite the functions, when we start using this service for transition. 
 *  
 * 
 * @author tapan
 *
 */

public class PerceptualObjTransitionService extends HibernateDaoSupport 
	implements IPerceptualObjTransitionService {

	IResearchProjectService researchProjectService;
	IBrandSpecsService brandSpecsService;
	ISemanticValueService semanticValueService;
	IBrandAdvertisementService brandAdvertisementService;
	IPerceptualObjService perceptualObjService;
	ISemanticMDSMapService semanticMDSMapService; 
	IMDSValueService mdsValueService;
	
	
	
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
	 * @return the semanticMDSMapService
	 */
	public ISemanticMDSMapService getSemanticMDSMapService() {
		return semanticMDSMapService;
	}
	/**
	 * @param semanticMDSMapService the semanticMDSMapService to set
	 */
	public void setSemanticMDSMapService(
			ISemanticMDSMapService semanticMDSMapService) {
		this.semanticMDSMapService = semanticMDSMapService;
	}
	/**
	 * @return the semanticValueService
	 */
	public ISemanticValueService getSemanticValueService() {
		return semanticValueService;
	}
	/**
	 * @param semanticValueService the semanticValueService to set
	 */
	public void setSemanticValueService(ISemanticValueService semanticValueService) {
		this.semanticValueService = semanticValueService;
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
	 * @return the perceptualObjService
	 */
	public IPerceptualObjService getPerceptualObjService() {
		return perceptualObjService;
	}
	/**
	 * @param perceptualObjService the perceptualObjService to set
	 */
	public void setPerceptualObjService(IPerceptualObjService perceptualObjService) {
		this.perceptualObjService = perceptualObjService;
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

	
	public void transitionPerceptualObjForTeam(Team selectedTeam,
			String currentPeriod) {/*

		int currPeriod = Integer.parseInt(currentPeriod); 
		ResearchProject[] researchProjects = researchProjectService.getResearchProjectsForTeamCurrentPeriod(selectedTeam);
		if (researchProjects != null && researchProjects.length > 0) {
			for (int i = 0;i < researchProjects.length; i++) {
				Set projectBrands = researchProjects[i].getBrands();
				Iterator itr = projectBrands.iterator();
				while (itr.hasNext()) {
					// We need to save an Intermediate/Final Semantic Scale and Intermediate/Final MDS Dimension for every Brand
					Brand brand = (Brand) itr.next();
					if (brand != null) {
						//getting the BrandAdvertisement and BrandAwareness object for this brand
						BrandAdvertisement thisBrandAdv = 
							brandAdvertisementService.getBrandAdvOnBrand(brand);
						IAdvBrandAwareness thisBrandAwareness = brandAdvertisementService.getBrandAwareness(brand);
						
						// Now fetching the user Perceptual Input for Semantic/MDS Values
						PerceptualObj[] perceptualObjInput = perceptualObjService.getPerceptualObjInputForBrand(brand);
						
						//Getting the weighted Brand Awareness
						double weightedBA = getWeightedBrandAwareness(thisBrandAdv, thisBrandAwareness);
						
						// Procesing data for the Semantic Scale
						ISemanticValues iSemanticValue = saveISemanticValue(researchProjects[i], brand);
						FSemanticValues fSemanticValue = new FSemanticValues();
						*//**
						 *  If the current period is 0 and the user is transitioning from period 0 to period 1
						 *  	then the Intermediate Semantic and MDS values are saved as Final values without 
						 *  	any calculations.
						 *//*
						if (currPeriod == 0) {
							fSemanticValue = saveFSemanticValue(iSemanticValue);
						}
						*//**
						 * If any other period Transition, other than 0 to 1, the Final Semantic and MDS values 
						 * 	will be re calculated based upon the input d by the teams.
						 *//*
						else {
							fSemanticValue = saveFSemanticValue(iSemanticValue, 
									thisBrandAdv, weightedBA, brand, perceptualObjInput);
						}
						
						// Processing data for the MDS Dimenstions
						IMDSValues iMDSValue = saveIMDSValue(fSemanticValue);
						FMDSValues fMDSValue = new FMDSValues();
						
						if (currPeriod == 0) {
							fMDSValue = saveFMDSValue(iMDSValue);
						}
						else {
							fMDSValue = saveFMDSValue(iMDSValue, weightedBA, thisBrandAdv, 
									perceptualObjInput, brand);
							
						}
					}
				}
			}
		}
	*/}

	
	
	/**
	 * Saving Final MDS Dimensions for all transitions other than Period 0 to 1 
	 * @param iMDSValue
	 * @param weightedBA
	 * @param thisBrandAdv
	 * @param perceptualObjInput
	 * @return
	 */
	private FMDSValues saveFMDSValue(IMDSValues iMDSValue, double weightedBA,
			BrandAdvertisement thisBrandAdv, PerceptualObj[] perceptualObjInput, Brand thisBrand) {/*
		
		FMDSValues fMDSValue = new FMDSValues();
		fMDSValue.setBrand(thisBrand);
		
		if (perceptualObjInput != null && perceptualObjInput.length > 0 && perceptualObjInput.length <= 2) {
			for(int i = 0; i < perceptualObjInput.length; i++) {
				if (perceptualObjInput[i].getScale().equalsIgnoreCase(MDS_DIMENSION)) {
					
					if (perceptualObjInput[i].getDimension().equalsIgnoreCase(MDS_DIMENSION_ECONOMY))
						fMDSValue.setEconomicValue(iMDSValue.getEconomicValue() + 
								(getEffectiveConst(weightedBA, thisBrandAdv) * 
										(perceptualObjInput[i].getObjective() - iMDSValue.getEconomicValue())));
					else 
						fMDSValue.setEconomicValue(iMDSValue.getEconomicValue());
					
					if (perceptualObjInput[i].getDimension().equalsIgnoreCase(MDS_DIMENSION_QUALITY))
						fMDSValue.setQualityValue(iMDSValue.getQualityValue() + 
								(getEffectiveConst(weightedBA, thisBrandAdv) * 
										(perceptualObjInput[i].getObjective() - iMDSValue.getQualityValue())));
					else 
						fMDSValue.setQualityValue(iMDSValue.getQualityValue());

					if (perceptualObjInput[i].getDimension().equalsIgnoreCase(MDS_DIMENSION_APPEAL))
						fMDSValue.setAppealValue(iMDSValue.getAppealValue() + 
								(getEffectiveConst(weightedBA, thisBrandAdv) * 
										(perceptualObjInput[i].getObjective() - iMDSValue.getAppealValue())));
					else 
						fMDSValue.setAppealValue(iMDSValue.getAppealValue());

					mdsValueService.saveFMDSDimension(fMDSValue);
				}
			}
		}
		else 
			fMDSValue = saveFMDSValue(iMDSValue);
		
		return fMDSValue;
	*/
	return null;
	}
	
	/**
	 * Saving Final MDS Dimensions for Period 0
	 * @param iMDSValue
	 * @return
	 */
	private FMDSValues saveFMDSValue(IMDSValues iMDSValue) {
		
		FMDSValues fMDSValue = new FMDSValues();
		fMDSValue.setBrand(iMDSValue.getBrand());
		fMDSValue.setEconomicValue(iMDSValue.getEconomicValue());
		fMDSValue.setQualityValue(iMDSValue.getQualityValue());
		fMDSValue.setAppealValue(iMDSValue.getAppealValue());
		mdsValueService.saveFMDSDimension(fMDSValue);
		
		return fMDSValue;
	}
	
	/**
	 * Saving Intermediate MDS Dimensions
	 * @param fSemanticValue
	 * @return
	 */
	private IMDSValues saveIMDSValue(FSemanticValues fSemanticValue) {
		double iMDSEconomy = 0, iMDSQuality = 0, iMDSAppeal = 0;
		IMDSValues iMDSValue = new IMDSValues();
		// Calculating Intermediate Economy Dimension
		SemanticMDSMap economicMap = semanticMDSMapService.getSemanticScalesForMDSDimension("Economy");
		// Calculating Intermediate Quality Dimension
		SemanticMDSMap qualityMap = semanticMDSMapService.getSemanticScalesForMDSDimension("Quality");
		// Calculating Intermediate Appeal Dimension
		SemanticMDSMap appealMap = semanticMDSMapService.getSemanticScalesForMDSDimension("Appeal");
		
		iMDSEconomy = ((economicMap.getDesignEq() * (10.0/3.0) * (fSemanticValue.getDesignValue()-1)) + 
				(economicMap.getFragranceEq() * (10.0/3.0) * (fSemanticValue.getFragranceValue()-1)) +
				(economicMap.getPersistenceEq() * (10.0/3.0) * (fSemanticValue.getPersistenceValue()-1)) +
				(economicMap.getPackagingEq() * (10.0/3.0) * (fSemanticValue.getPackagingValue()-1)) +
				(economicMap.getSafetyEq() * (10.0/3.0) * (fSemanticValue.getSafetyValue()-1)) + 
				(economicMap.getPriceEq() * new Double(-10.0/3.0).doubleValue() * (fSemanticValue.getPrice()-7)));
		
		iMDSQuality = ((qualityMap.getDesignEq() * (10.0/3.0) * (fSemanticValue.getDesignValue()-1)) + 
				(qualityMap.getFragranceEq() * (10.0/3.0) * (fSemanticValue.getFragranceValue()-1)) +
				(qualityMap.getPersistenceEq() * (10.0/3.0) * (fSemanticValue.getPersistenceValue()-1)) +
				(qualityMap.getPackagingEq() * (10.0/3.0) * (fSemanticValue.getPackagingValue()-1)) +
				(qualityMap.getSafetyEq() * (10.0/3.0) * (fSemanticValue.getSafetyValue()-1)) + 
				(qualityMap.getPriceEq() * (-10.0/3.0) * (fSemanticValue.getPrice()-7)));
		
		iMDSAppeal = ((appealMap.getDesignEq() * (10.0/3.0) * (fSemanticValue.getDesignValue()-1)) + 
				(appealMap.getFragranceEq() * (10.0/3.0) * (fSemanticValue.getFragranceValue()-1)) +
				(appealMap.getPersistenceEq() * (10.0/3.0) * (fSemanticValue.getPersistenceValue()-1)) +
				(appealMap.getPackagingEq() * (10.0/3.0) * (fSemanticValue.getPackagingValue()-1)) +
				(appealMap.getSafetyEq() * (10.0/3.0) * (fSemanticValue.getSafetyValue()-1)) + 
				(appealMap.getPriceEq() * (-10.0/3.0) * (fSemanticValue.getPrice()-7)));
		
		iMDSValue.setBrand(fSemanticValue.getBrand());
		iMDSValue.setEconomicValue(iMDSEconomy);
		iMDSValue.setQualityValue(iMDSQuality);
		iMDSValue.setAppealValue(iMDSAppeal);
		
		mdsValueService.saveIMDSDimension(iMDSValue);
		
		return iMDSValue;
	}
	/**
	 * Function to save Final Semantic Values for all transitions other than Period 0 to 1
	 * @param iSemanticValue
	 * @param thisBrandAdv
	 * @param weightedBA
	 * @return
	 */
	private FSemanticValues saveFSemanticValue(ISemanticValues iSemanticValue,
			BrandAdvertisement thisBrandAdv, double weightedBA, Brand thisBrand, 
			PerceptualObj[] perceptualObjInput) {/*
		
		
		FSemanticValues fSemanticValue = new FSemanticValues();
		fSemanticValue.setBrand(thisBrand);
		
		if (perceptualObjInput != null && perceptualObjInput.length > 0 && perceptualObjInput.length <= 2) {
			for(int i = 0; i < perceptualObjInput.length; i++) {
				if (perceptualObjInput[i].getScale().equalsIgnoreCase(SEMANTIC_SCALE)) {
					
					if (perceptualObjInput[i].getDimension().equalsIgnoreCase(SEMANTIC_SCALE_DESIGN))
						fSemanticValue.setDesignValue(iSemanticValue.getDesignValue() + 
								(getEffectiveConst(weightedBA, thisBrandAdv) * 
										(perceptualObjInput[i].getObjective() - iSemanticValue.getDesignValue())));
					else 
						fSemanticValue.setDesignValue(iSemanticValue.getDesignValue());
					
					if (perceptualObjInput[i].getDimension().equalsIgnoreCase(SEMANTIC_SCALE_FRAGRANCE))
						fSemanticValue.setFragranceValue(iSemanticValue.getFragranceValue() + 
								(getEffectiveConst(weightedBA, thisBrandAdv) * 
										(perceptualObjInput[i].getObjective() - iSemanticValue.getFragranceValue())));
					else 
						fSemanticValue.setFragranceValue(iSemanticValue.getFragranceValue());
					
					if (perceptualObjInput[i].getDimension().equalsIgnoreCase(SEMANTIC_SCALE_PACKAGING))
						fSemanticValue.setPackagingValue(iSemanticValue.getPackagingValue() + 
								(getEffectiveConst(weightedBA, thisBrandAdv) * 
										(perceptualObjInput[i].getObjective() - iSemanticValue.getPackagingValue())));
					else 
						fSemanticValue.setPackagingValue(iSemanticValue.getPackagingValue());
					
					if (perceptualObjInput[i].getDimension().equalsIgnoreCase(SEMANTIC_SCALE_PERSISTENCE))
						fSemanticValue.setPersistenceValue(iSemanticValue.getPersistenceValue() + 
								(getEffectiveConst(weightedBA, thisBrandAdv) * 
										(perceptualObjInput[i].getObjective() - iSemanticValue.getPersistenceValue())));
					else 
						fSemanticValue.setPersistenceValue(iSemanticValue.getPersistenceValue());
					
					if (perceptualObjInput[i].getDimension().equalsIgnoreCase(SEMANTIC_SCALE_SAFETY))
						fSemanticValue.setSafetyValue(iSemanticValue.getSafetyValue() + 
								(getEffectiveConst(weightedBA, thisBrandAdv) * 
										(perceptualObjInput[i].getObjective() - iSemanticValue.getSafetyValue())));
					else 
						fSemanticValue.setSafetyValue(iSemanticValue.getSafetyValue());
					
					if (perceptualObjInput[i].getDimension().equalsIgnoreCase(SEMANTIC_SCALE_PRICE))
						fSemanticValue.setPrice(iSemanticValue.getPrice() + 
								(getEffectiveConst(weightedBA, thisBrandAdv) * 
										(perceptualObjInput[i].getObjective() - iSemanticValue.getPrice())));
					else 
						fSemanticValue.setPrice(iSemanticValue.getPrice());
					
					semanticValueService.saveFSemanticScale(fSemanticValue);
					
				}
			}
		}
		else
			fSemanticValue = saveFSemanticValue(iSemanticValue);
		
		return fSemanticValue;
	*/
	
	return null;
	}
	
	
	
	/**
	 * This function is responsible for calculating/saving the intermediate Semantic values for the provided Brand.
	 * @param researchProject
	 * @param brand
	 * @return
	 */
	private ISemanticValues saveISemanticValue(ResearchProject researchProject, Brand brand) {
		
		double iDesignValue = 0, iFragranceValue = 0, iPersistenceValue = 0, 
			iPackagingValue = 0, iSafetyValue = 0, iPrice = 0; 
		ISemanticValues iSemanticValue = new ISemanticValues();
		
		iDesignValue = (1 + (new Double((researchProject.getDesign() - 1) * 6).doubleValue()/99));
		iFragranceValue = (1 + (new Double((researchProject.getFragrance() - 1) * 6).doubleValue()/99));
		iPersistenceValue = (1 + (new Double((researchProject.getPersistence() - 1) * 6).doubleValue()/99));
		iPackagingValue = (1 + (new Double((researchProject.getPackaging() - 1) * 6).doubleValue()/99));
		iSafetyValue = (1 + (new Double((researchProject.getSafety() - 1) * 6).doubleValue()/99));
			
		BrandSpecs brandSpecs = brandSpecsService.getBrandSpecsOnBrand(brand);
		if (brandSpecs != null) {
			iPrice = (1 + (new Double((brandSpecs.getRetailPrice() - 1) * 6).doubleValue()/699));	
		}
		
		iSemanticValue.setBrand(brand);
		iSemanticValue.setDesignValue(iDesignValue);
		iSemanticValue.setFragranceValue(iFragranceValue);
		iSemanticValue.setPersistenceValue(iPersistenceValue);
		iSemanticValue.setPackagingValue(iPackagingValue);
		iSemanticValue.setSafetyValue(iSafetyValue);
		iSemanticValue.setPrice(iPrice);
		semanticValueService.saveISemanticScale(iSemanticValue);
		
		return iSemanticValue;
	}
	
	
	/**
	 * Function to save Final Semantic Values for Period 0
	 * @param iSemanticValue
	 * @return
	 */
	private FSemanticValues saveFSemanticValue(ISemanticValues iSemanticValue) {
		
		FSemanticValues fSemanticValue = new FSemanticValues();
		fSemanticValue.setBrand(iSemanticValue.getBrand());
		fSemanticValue.setDesignValue(iSemanticValue.getDesignValue());
		fSemanticValue.setFragranceValue(iSemanticValue.getFragranceValue());
		fSemanticValue.setPersistenceValue(iSemanticValue.getPersistenceValue());
		fSemanticValue.setPackagingValue(iSemanticValue.getPackagingValue());
		fSemanticValue.setSafetyValue(iSemanticValue.getSafetyValue());
		fSemanticValue.setPrice(iSemanticValue.getPrice());
		
		semanticValueService.saveFSemanticScale(fSemanticValue);
		return fSemanticValue;
	}
	
	/**
	 * Calculate weighted Brand Awareness for the calculation of Effective Const	
	 * @param thisBrandAdv
	 * @param thisBrandAwareness
	 * @return
	 */
	private double getWeightedBrandAwareness(BrandAdvertisement thisBrandAdv, 
			IAdvBrandAwareness thisBrandAwareness) {
		double weightedBA = 0;
		if (thisBrandAdv != null && thisBrandAwareness != null) {
			
			weightedBA = ((thisBrandAdv.getSegBlueBloods() * thisBrandAwareness.getBluebloods_BrandAwareness()) +
					(thisBrandAdv.getSegRaffles() * thisBrandAwareness.getRaffles_BrandAwareness()) +
					(thisBrandAdv.getSegWannabees() * thisBrandAwareness.getWannabes_BrandAwareness()) +
					(thisBrandAdv.getSegStrugglers() * thisBrandAwareness.getStrugglers_BrandAwareness()) +
					(thisBrandAdv.getSegDeprived() * thisBrandAwareness.getStrugglers_BrandAwareness()))/ 
					(thisBrandAdv.getSegBlueBloods() + thisBrandAdv.getSegRaffles() + thisBrandAdv.getSegWannabees() +
							thisBrandAdv.getSegStrugglers() + thisBrandAdv.getSegDeprived());
			
		}
		return weightedBA;
	}
	
	/**
	 * Calculating Effective Const.
	 * @param weightedBA
	 * @param thisBrandAdv
	 * @return
	 */
	private double getEffectiveConst(double weightedBA, BrandAdvertisement thisBrandAdv) {
		double totalAdvExpense = thisBrandAdv.getAdvMediabudget() + thisBrandAdv.getAdvResearchBudget();
		double effectiveConst = 0;
		
		if (weightedBA >= 0.5) {
			effectiveConst = ((0.3 * Math.pow(totalAdvExpense, 2))/Math.pow(1500, 2));
		}
		else if (weightedBA > 0.2 && weightedBA < 0.5) {
			effectiveConst = ((0.6 * Math.pow(totalAdvExpense, 2))/Math.pow(1500, 2));
		}
		else if (weightedBA <= 0.2) {
			effectiveConst = ((0.8 * Math.pow(totalAdvExpense, 2))/Math.pow(1500, 2));
		}
		return effectiveConst;
	}

	
	
	
}
