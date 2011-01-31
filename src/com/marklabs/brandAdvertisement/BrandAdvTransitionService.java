package com.marklabs.brandAdvertisement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.brands.Brand;
import com.marklabs.brands.IBrandService;
import com.marklabs.researchProject.IResearchProjectService;
import com.marklabs.researchProject.ResearchProject;
import com.marklabs.teams.Team;
import com.marklabs.utils.ISegmentConstantsService;

public class BrandAdvTransitionService extends HibernateDaoSupport implements IBrandAdvTransitionService {
	
	IResearchProjectService researchProjectService;
	IBrandAdvertisementService brandAdvertisementService;
	ISegmentConstantsService segmentConstantsService;
	IBrandAwarenessMetadataService brandAwarenessMetadataService;
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

	/**
	 * @return the brandAwarenessMetadataService
	 */
	public IBrandAwarenessMetadataService getBrandAwarenessMetadataService() {
		return brandAwarenessMetadataService;
	}

	/**
	 * @param brandAwarenessMetadataService the brandAwarenessMetadataService to set
	 */
	public void setBrandAwarenessMetadataService(
			IBrandAwarenessMetadataService brandAwarenessMetadataService) {
		this.brandAwarenessMetadataService = brandAwarenessMetadataService;
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

	
	
	public void transitionBrandAdvForTeam(Team selectedTeam, String currentPeriod) {
		
		int currPeriod = Integer.parseInt(currentPeriod); 
		ResearchProject[] researchProjects = researchProjectService.getResearchProjectsForTeamCurrentPeriod(selectedTeam);
		if (researchProjects != null && researchProjects.length > 0) {	
			for (int i = 0;i < researchProjects.length; i++) {
				Set projectBrands = researchProjects[i].getBrands();
				Iterator itr = projectBrands.iterator();
				while (itr.hasNext()) {
					Brand brand = (Brand) itr.next();
					BrandAdvertisement brandAdv = brandAdvertisementService.getBrandAdvOnBrand(brand);
					if (brandAdv != null) {
						// Function call to save Intermediate Advertisement Segment Expense
						IAdvSegExpense advSegExpense = saveAdvSegmentExpense(brand, brandAdv);
						
						//Function call to save Intermediate Advertisement Effective Segment Expense
						IAdvEffSegExpense advEffSegExpense = 
							saveEffAdvSegmentExpense(brand, brandAdv, advSegExpense, currPeriod);
						
						// Calculating and Saving Brand Awareness
						IAdvBrandAwareness advBrandAwareness = 
							saveAdvBrandAwareness(brand, brandAdv, advSegExpense, currPeriod, advEffSegExpense);
						
						
					}
				}
			}
		}
	}
	
	
	/**
	 * Function to calculate Advertisement Segment Expense related constants
	 * @param AdvMediaBudget
	 * @param AdvResearchBudget
	 * @return
	 */
	private HashMap getResearchPercentage(double AdvMediaBudget, double AdvResearchBudget) {
		double researchRatio = (AdvResearchBudget/AdvMediaBudget);
		HashMap constMap = new HashMap();
		if (researchRatio >= 0.1) {
			constMap.put("efficiency", new Double(0.8));
			constMap.put("spill", new Long(4));
		}
		else if (researchRatio < 0.1 && researchRatio > 0.05) {
			constMap.put("efficiency", new Double(0.6));
			constMap.put("spill", new Long(8));
		}
		else if (researchRatio <= 0.05) {
			constMap.put("efficiency", new Double(0.5));
			constMap.put("spill", new Long(10));
		}
		return constMap;
	}
	
	/**
	 * Function responsible to save Segment Advertising Expense. 
	 * @param brand
	 * @param brandAdv
	 * @return Intermediate Advertising Segment Expense
	 */
	private IAdvSegExpense saveAdvSegmentExpense(Brand brand, BrandAdvertisement brandAdv) {
		
		//initializing all the variables to be used.
		long totalAdvExpense = 0, bluebloods_SegExp = 0, raffles_SegExp = 0, wannabes_SegExp = 0;
		long strugglers_SegExp = 0, deprived_SegExp = 0, advResearchBudget = 0, advMediaBudget = 0;
		double efficiency = 0;
		long spill = 0;
		
		totalAdvExpense = brandAdv.getAdvMediabudget() + brandAdv.getAdvResearchBudget();
		advMediaBudget = brandAdv.getAdvMediabudget();
		advResearchBudget = brandAdv.getAdvResearchBudget();
							
		//fetching the required constants
		HashMap constMap = getResearchPercentage(advMediaBudget, advResearchBudget);
		efficiency = ((Double)constMap.get("efficiency")).doubleValue();
		spill = ((Long)constMap.get("spill")).longValue();
		
		//Starting the calculations
		bluebloods_SegExp = Math.round(totalAdvExpense * (((brandAdv.getSegBlueBloods()*efficiency)+spill)/100));
		raffles_SegExp = Math.round(totalAdvExpense * (((brandAdv.getSegRaffles()*efficiency)+spill)/100));
		wannabes_SegExp = Math.round(totalAdvExpense * (((brandAdv.getSegWannabees()*efficiency)+spill)/100));
		strugglers_SegExp = Math.round(totalAdvExpense * (((brandAdv.getSegStrugglers()*efficiency)+spill)/100));
		deprived_SegExp = Math.round(totalAdvExpense * (((brandAdv.getSegDeprived()*efficiency)+spill)/100));
		
		//Now creating an IAdvSegment Expense Object to save.
		IAdvSegExpense segExpense = new IAdvSegExpense();
		segExpense.setBrand(brand);
		segExpense.setBluebloods_SegExp(bluebloods_SegExp);
		segExpense.setRaffles_SegExp(raffles_SegExp);
		segExpense.setWannabes_SegExp(wannabes_SegExp);
		segExpense.setStrugglers_SegExp(strugglers_SegExp);
		segExpense.setDeprived_SegExp(deprived_SegExp);
		segExpense.setTotalAdvExpense(totalAdvExpense);
		brandAdvertisementService.saveIAdvSegmentExpense(segExpense);
		
		return segExpense;
	}

	private IAdvEffSegExpense saveEffAdvSegmentExpense(Brand brand, BrandAdvertisement brandAdv, 
			IAdvSegExpense advSegExpense, int currentPeriod) {
		
		long bluebloodsEffSegExp = 0, rafflesEffSegExp = 0, wannabesEffSegExp = 0, strugglersEffSegExp = 0,
			deprivedEffSegExp = 0;
		
		//Fetching Effective Constants
		double totalEffectiveConstBlueBlood = calculateEffectiveConstBlueBloods(brandAdv, currentPeriod);
		double totalEffectiveConstRaffles = calculateEffectiveConstRaffles(brandAdv, currentPeriod);
		double totalEffectiveConstWannabes = calculateEffectiveConstWannabes(brandAdv, currentPeriod);
		double totalEffectiveConstStrugglers = calculateEffectiveConstStrugglers(brandAdv, currentPeriod);
		double totalEffectiveConstDeprived = calculateEffectiveConstDeprived(brandAdv, currentPeriod);
		
		
		
		//Now private member functions to calculate effective Segment Expenses 
		bluebloodsEffSegExp = calculateBlueBloodEffExpense(advSegExpense, totalEffectiveConstBlueBlood);
		rafflesEffSegExp = calculateRafflesEffExpense(advSegExpense, totalEffectiveConstRaffles);
		wannabesEffSegExp = calculateWannabesEffExpense(advSegExpense, totalEffectiveConstWannabes);
		strugglersEffSegExp = calculateStrugglersEffExpense(advSegExpense, totalEffectiveConstStrugglers);
		deprivedEffSegExp = calculateDeprivedEffExpense(advSegExpense, totalEffectiveConstDeprived);
		
		//Saving the Intermediate Advertisement Effective Segment Expense 
		IAdvEffSegExpense effSegExpense = new IAdvEffSegExpense();
		effSegExpense.setBrand(brand);
		effSegExpense.setBluebloods_EffSegExp(bluebloodsEffSegExp);
		effSegExpense.setRaffles_EffSegExp(rafflesEffSegExp);
		effSegExpense.setWannabes_EffSegExp(wannabesEffSegExp);
		effSegExpense.setStrugglers_EffSegExp(strugglersEffSegExp);
		effSegExpense.setDeprived_EffSegExp(deprivedEffSegExp);
		effSegExpense.setTotalEffAdvExpense(bluebloodsEffSegExp + rafflesEffSegExp + wannabesEffSegExp + 
				strugglersEffSegExp + deprivedEffSegExp);
		brandAdvertisementService.saveIAdvEffectiveSegmentExpense(effSegExpense);
		return effSegExpense;
	}

	private long calculateBlueBloodEffExpense (IAdvSegExpense advSegExpense, double totalEffectiveConst){
		long effExpBlueBlood = 0;
		
		effExpBlueBlood = Math.round((advSegExpense.getBluebloods_SegExp() * totalEffectiveConst)/100) ;
		return effExpBlueBlood;
	}
	
	private long calculateRafflesEffExpense (IAdvSegExpense advSegExpense, double totalEffectiveConst){
		long effExpRaffles = 0;
		
		effExpRaffles = Math.round((advSegExpense.getRaffles_SegExp() * totalEffectiveConst)/100) ;
		return effExpRaffles;
	}
	
	private long calculateWannabesEffExpense (IAdvSegExpense advSegExpense, double totalEffectiveConst){
		long effExpWannabes = 0;
		
		effExpWannabes = Math.round((advSegExpense.getWannabes_SegExp() * totalEffectiveConst)/100) ;
		return effExpWannabes;
	}
	
	private long calculateStrugglersEffExpense (IAdvSegExpense advSegExpense, double totalEffectiveConst){
		long effExpStrugglers = 0;
		
		effExpStrugglers = Math.round((advSegExpense.getStrugglers_SegExp() * totalEffectiveConst)/100) ;
		return effExpStrugglers;
	}
	
	private long calculateDeprivedEffExpense (IAdvSegExpense advSegExpense, double totalEffectiveConst){
		long effExpDeprived = 0;
		
		effExpDeprived = Math.round((advSegExpense.getDeprived_SegExp() * totalEffectiveConst)/100) ;
		return effExpDeprived;
	}
	
	
	private  double calculateEffectiveConstBlueBloods(BrandAdvertisement brandAdv, int currentPeriod) {
		double printEffective = 0, teleEffective = 0, radioEffective = 0, internetEffective = 0;
		double totalEffectiveConst = 0;
		
		// Fetching all the constants required
		String iPrintReach = segmentConstantsService.getBlueBloodConstByNameAndPeriod("PRINT_REACH", currentPeriod);
		String iSynergyPT = segmentConstantsService.getBlueBloodConstByNameAndPeriod("SYNERGY_PRINT_TELEVISION", currentPeriod);
		String iSynergyPR = segmentConstantsService.getBlueBloodConstByNameAndPeriod("SYNERGY_PRINT_RADIO", currentPeriod);
		String iSynergyPI = segmentConstantsService.getBlueBloodConstByNameAndPeriod("SYNERGY_PRINT_INTERNET", currentPeriod);
		
		String iTelevisionReach = segmentConstantsService.getBlueBloodConstByNameAndPeriod("TELEVISION_REACH", currentPeriod);
		String iSynergyTR = segmentConstantsService.getBlueBloodConstByNameAndPeriod("SYNERGY_TELEVISION_RADIO", currentPeriod);
		String iSynergyTI = segmentConstantsService.getBlueBloodConstByNameAndPeriod("SYNERGY_TELEVISION_INTERNET", currentPeriod);
		
		String iRadioReach = segmentConstantsService.getBlueBloodConstByNameAndPeriod("RADIO_REACH", currentPeriod);
		String iSynergyRI = segmentConstantsService.getBlueBloodConstByNameAndPeriod("SYNERGY_RADIO_INTERNET", currentPeriod);
		
		String iInternetReach = segmentConstantsService.getBlueBloodConstByNameAndPeriod("INTERNET_REACH", currentPeriod);
		
		
		if (null != iPrintReach && null != iSynergyPT && null != iSynergyPR && null != iSynergyPI
				&& null != iTelevisionReach && null != iSynergyTR && null != iSynergyTI 
				&& null != iRadioReach && null != iSynergyRI && null != iInternetReach
				&& (!(iPrintReach.equalsIgnoreCase(""))) && (!(iSynergyPT.equalsIgnoreCase(""))) 
				&& (!(iSynergyPR.equalsIgnoreCase(""))) && (!(iSynergyPI.equalsIgnoreCase(""))) 
				&& (!(iTelevisionReach.equalsIgnoreCase(""))) && (!(iSynergyTR.equalsIgnoreCase(""))) 
				&& (!(iSynergyTI.equalsIgnoreCase(""))) && (!(iRadioReach.equalsIgnoreCase(""))) 
				&& (!(iSynergyRI.equalsIgnoreCase(""))) && (!(iInternetReach.equalsIgnoreCase(""))) ) {
			
			double printReach = Double.parseDouble(iPrintReach);
			double synergyPT = Double.parseDouble(iSynergyPT);
			double synergyPR = Double.parseDouble(iSynergyPR);
			double synergyPI = Double.parseDouble(iSynergyPI);
			
			double teleReach = Double.parseDouble(iTelevisionReach);
			double synergyTR = Double.parseDouble(iSynergyTR);
			double synergyTI = Double.parseDouble(iSynergyTI);
			
			double radioReach = Double.parseDouble(iRadioReach);
			double synergyRI = Double.parseDouble(iSynergyRI);
			
			double internetReach = Double.parseDouble(iInternetReach);
			
			printEffective = brandAdv.getMediumPrint() * Math.min((printReach + ((synergyPT * 
					brandAdv.getMediumTelevision() + synergyPR * brandAdv.getMediumRadio() + 
					synergyPI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumPrint()))), 1);
			
			teleEffective = brandAdv.getMediumTelevision() * Math.min((teleReach + ((synergyPT *
					brandAdv.getMediumPrint() + synergyTR * brandAdv.getMediumRadio() + synergyTI *
					brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumTelevision()))), 1);
			
			radioEffective = brandAdv.getMediumRadio() * Math.min((radioReach + ((synergyPR * 
					brandAdv.getMediumPrint() + synergyTR + brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumRadio()))), 1);
			
			internetEffective = brandAdv.getMediumInternet() * Math.min((internetReach + ((synergyPI *
					brandAdv.getMediumPrint() + synergyTI * brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumRadio())/Math.max(1, brandAdv.getMediumInternet()))), 1);
			
			totalEffectiveConst = printEffective + teleEffective + radioEffective + internetEffective ;
			
		}
		return totalEffectiveConst;
	}
	
	private  double calculateEffectiveConstRaffles(BrandAdvertisement brandAdv, int currentPeriod) {
		double printEffective = 0, teleEffective = 0, radioEffective = 0, internetEffective = 0;
		double totalEffectiveConst = 0;
		
		// Fetching all the constants required
		String iPrintReach = segmentConstantsService.getRafflesConstByNameAndPeriod("PRINT_REACH", currentPeriod);
		String iSynergyPT = segmentConstantsService.getRafflesConstByNameAndPeriod("SYNERGY_PRINT_TELEVISION", currentPeriod);
		String iSynergyPR = segmentConstantsService.getRafflesConstByNameAndPeriod("SYNERGY_PRINT_RADIO", currentPeriod);
		String iSynergyPI = segmentConstantsService.getRafflesConstByNameAndPeriod("SYNERGY_PRINT_INTERNET", currentPeriod);
		
		String iTelevisionReach = segmentConstantsService.getRafflesConstByNameAndPeriod("TELEVISION_REACH", currentPeriod);
		String iSynergyTR = segmentConstantsService.getRafflesConstByNameAndPeriod("SYNERGY_TELEVISION_RADIO", currentPeriod);
		String iSynergyTI = segmentConstantsService.getRafflesConstByNameAndPeriod("SYNERGY_TELEVISION_INTERNET", currentPeriod);
		
		String iRadioReach = segmentConstantsService.getRafflesConstByNameAndPeriod("RADIO_REACH", currentPeriod);
		String iSynergyRI = segmentConstantsService.getRafflesConstByNameAndPeriod("SYNERGY_RADIO_INTERNET", currentPeriod);
		
		String iInternetReach = segmentConstantsService.getRafflesConstByNameAndPeriod("INTERNET_REACH", currentPeriod);
		
		
		if (null != iPrintReach && null != iSynergyPT && null != iSynergyPR && null != iSynergyPI
				&& null != iTelevisionReach && null != iSynergyTR && null != iSynergyTI 
				&& null != iRadioReach && null != iSynergyRI && null != iInternetReach
				&& (!(iPrintReach.equalsIgnoreCase(""))) && (!(iSynergyPT.equalsIgnoreCase(""))) 
				&& (!(iSynergyPR.equalsIgnoreCase(""))) && (!(iSynergyPI.equalsIgnoreCase(""))) 
				&& (!(iTelevisionReach.equalsIgnoreCase(""))) && (!(iSynergyTR.equalsIgnoreCase(""))) 
				&& (!(iSynergyTI.equalsIgnoreCase(""))) && (!(iRadioReach.equalsIgnoreCase(""))) 
				&& (!(iSynergyRI.equalsIgnoreCase(""))) && (!(iInternetReach.equalsIgnoreCase(""))) ) {
			
			double printReach = Double.parseDouble(iPrintReach);
			double synergyPT = Double.parseDouble(iSynergyPT);
			double synergyPR = Double.parseDouble(iSynergyPR);
			double synergyPI = Double.parseDouble(iSynergyPI);
			
			double teleReach = Double.parseDouble(iTelevisionReach);
			double synergyTR = Double.parseDouble(iSynergyTR);
			double synergyTI = Double.parseDouble(iSynergyTI);
			
			double radioReach = Double.parseDouble(iRadioReach);
			double synergyRI = Double.parseDouble(iSynergyRI);
			
			double internetReach = Double.parseDouble(iInternetReach);
			
			printEffective = brandAdv.getMediumPrint() * Math.min((printReach + ((synergyPT * 
					brandAdv.getMediumTelevision() + synergyPR * brandAdv.getMediumRadio() + 
					synergyPI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumPrint()))), 1);
			
			teleEffective = brandAdv.getMediumTelevision() * Math.min((teleReach + ((synergyPT *
					brandAdv.getMediumPrint() + synergyTR * brandAdv.getMediumRadio() + synergyTI *
					brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumTelevision()))), 1);
			
			radioEffective = brandAdv.getMediumRadio() * Math.min((radioReach + ((synergyPR * 
					brandAdv.getMediumPrint() + synergyTR + brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumRadio()))), 1);
			
			internetEffective = brandAdv.getMediumInternet() * Math.min((internetReach + ((synergyPI *
					brandAdv.getMediumPrint() + synergyTI * brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumRadio())/Math.max(1, brandAdv.getMediumInternet()))), 1);
			
			totalEffectiveConst = printEffective + teleEffective + radioEffective + internetEffective ;
			
		}
		return totalEffectiveConst;
	}
	
	private  double calculateEffectiveConstWannabes(BrandAdvertisement brandAdv, int currentPeriod) {
		double printEffective = 0, teleEffective = 0, radioEffective = 0, internetEffective = 0;
		double totalEffectiveConst = 0;
		
		// Fetching all the constants required
		String iPrintReach = segmentConstantsService.getWannabesConstByNameAndPeriod("PRINT_REACH", currentPeriod);
		String iSynergyPT = segmentConstantsService.getWannabesConstByNameAndPeriod("SYNERGY_PRINT_TELEVISION", currentPeriod);
		String iSynergyPR = segmentConstantsService.getWannabesConstByNameAndPeriod("SYNERGY_PRINT_RADIO", currentPeriod);
		String iSynergyPI = segmentConstantsService.getWannabesConstByNameAndPeriod("SYNERGY_PRINT_INTERNET", currentPeriod);
		
		String iTelevisionReach = segmentConstantsService.getWannabesConstByNameAndPeriod("TELEVISION_REACH", currentPeriod);
		String iSynergyTR = segmentConstantsService.getWannabesConstByNameAndPeriod("SYNERGY_TELEVISION_RADIO", currentPeriod);
		String iSynergyTI = segmentConstantsService.getWannabesConstByNameAndPeriod("SYNERGY_TELEVISION_INTERNET", currentPeriod);
		
		String iRadioReach = segmentConstantsService.getWannabesConstByNameAndPeriod("RADIO_REACH", currentPeriod);
		String iSynergyRI = segmentConstantsService.getWannabesConstByNameAndPeriod("SYNERGY_RADIO_INTERNET", currentPeriod);
		
		String iInternetReach = segmentConstantsService.getWannabesConstByNameAndPeriod("INTERNET_REACH", currentPeriod);
		
		
		if (null != iPrintReach && null != iSynergyPT && null != iSynergyPR && null != iSynergyPI
				&& null != iTelevisionReach && null != iSynergyTR && null != iSynergyTI 
				&& null != iRadioReach && null != iSynergyRI && null != iInternetReach
				&& (!(iPrintReach.equalsIgnoreCase(""))) && (!(iSynergyPT.equalsIgnoreCase(""))) 
				&& (!(iSynergyPR.equalsIgnoreCase(""))) && (!(iSynergyPI.equalsIgnoreCase(""))) 
				&& (!(iTelevisionReach.equalsIgnoreCase(""))) && (!(iSynergyTR.equalsIgnoreCase(""))) 
				&& (!(iSynergyTI.equalsIgnoreCase(""))) && (!(iRadioReach.equalsIgnoreCase(""))) 
				&& (!(iSynergyRI.equalsIgnoreCase(""))) && (!(iInternetReach.equalsIgnoreCase(""))) ) {
			
			double printReach = Double.parseDouble(iPrintReach);
			double synergyPT = Double.parseDouble(iSynergyPT);
			double synergyPR = Double.parseDouble(iSynergyPR);
			double synergyPI = Double.parseDouble(iSynergyPI);
			
			double teleReach = Double.parseDouble(iTelevisionReach);
			double synergyTR = Double.parseDouble(iSynergyTR);
			double synergyTI = Double.parseDouble(iSynergyTI);
			
			double radioReach = Double.parseDouble(iRadioReach);
			double synergyRI = Double.parseDouble(iSynergyRI);
			
			double internetReach = Double.parseDouble(iInternetReach);
			
			printEffective = brandAdv.getMediumPrint() * Math.min((printReach + ((synergyPT * 
					brandAdv.getMediumTelevision() + synergyPR * brandAdv.getMediumRadio() + 
					synergyPI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumPrint()))), 1);
			
			teleEffective = brandAdv.getMediumTelevision() * Math.min((teleReach + ((synergyPT *
					brandAdv.getMediumPrint() + synergyTR * brandAdv.getMediumRadio() + synergyTI *
					brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumTelevision()))), 1);
			
			radioEffective = brandAdv.getMediumRadio() * Math.min((radioReach + ((synergyPR * 
					brandAdv.getMediumPrint() + synergyTR + brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumRadio()))), 1);
			
			internetEffective = brandAdv.getMediumInternet() * Math.min((internetReach + ((synergyPI *
					brandAdv.getMediumPrint() + synergyTI * brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumRadio())/Math.max(1, brandAdv.getMediumInternet()))), 1);
			
			totalEffectiveConst = printEffective + teleEffective + radioEffective + internetEffective ;
			
		}
		return totalEffectiveConst;
	}
	
	private  double calculateEffectiveConstStrugglers(BrandAdvertisement brandAdv, int currentPeriod) {
		double printEffective = 0, teleEffective = 0, radioEffective = 0, internetEffective = 0;
		double totalEffectiveConst = 0;
		
		// Fetching all the constants required
		String iPrintReach = segmentConstantsService.getStrugglersConstByNameAndPeriod("PRINT_REACH", currentPeriod);
		String iSynergyPT = segmentConstantsService.getStrugglersConstByNameAndPeriod("SYNERGY_PRINT_TELEVISION", currentPeriod);
		String iSynergyPR = segmentConstantsService.getStrugglersConstByNameAndPeriod("SYNERGY_PRINT_RADIO", currentPeriod);
		String iSynergyPI = segmentConstantsService.getStrugglersConstByNameAndPeriod("SYNERGY_PRINT_INTERNET", currentPeriod);
		
		String iTelevisionReach = segmentConstantsService.getStrugglersConstByNameAndPeriod("TELEVISION_REACH", currentPeriod);
		String iSynergyTR = segmentConstantsService.getStrugglersConstByNameAndPeriod("SYNERGY_TELEVISION_RADIO", currentPeriod);
		String iSynergyTI = segmentConstantsService.getStrugglersConstByNameAndPeriod("SYNERGY_TELEVISION_INTERNET", currentPeriod);
		
		String iRadioReach = segmentConstantsService.getStrugglersConstByNameAndPeriod("RADIO_REACH", currentPeriod);
		String iSynergyRI = segmentConstantsService.getStrugglersConstByNameAndPeriod("SYNERGY_RADIO_INTERNET", currentPeriod);
		
		String iInternetReach = segmentConstantsService.getStrugglersConstByNameAndPeriod("INTERNET_REACH", currentPeriod);
		
		
		if (null != iPrintReach && null != iSynergyPT && null != iSynergyPR && null != iSynergyPI
				&& null != iTelevisionReach && null != iSynergyTR && null != iSynergyTI 
				&& null != iRadioReach && null != iSynergyRI && null != iInternetReach
				&& (!(iPrintReach.equalsIgnoreCase(""))) && (!(iSynergyPT.equalsIgnoreCase(""))) 
				&& (!(iSynergyPR.equalsIgnoreCase(""))) && (!(iSynergyPI.equalsIgnoreCase(""))) 
				&& (!(iTelevisionReach.equalsIgnoreCase(""))) && (!(iSynergyTR.equalsIgnoreCase(""))) 
				&& (!(iSynergyTI.equalsIgnoreCase(""))) && (!(iRadioReach.equalsIgnoreCase(""))) 
				&& (!(iSynergyRI.equalsIgnoreCase(""))) && (!(iInternetReach.equalsIgnoreCase(""))) ) {
			
			double printReach = Double.parseDouble(iPrintReach);
			double synergyPT = Double.parseDouble(iSynergyPT);
			double synergyPR = Double.parseDouble(iSynergyPR);
			double synergyPI = Double.parseDouble(iSynergyPI);
			
			double teleReach = Double.parseDouble(iTelevisionReach);
			double synergyTR = Double.parseDouble(iSynergyTR);
			double synergyTI = Double.parseDouble(iSynergyTI);
			
			double radioReach = Double.parseDouble(iRadioReach);
			double synergyRI = Double.parseDouble(iSynergyRI);
			
			double internetReach = Double.parseDouble(iInternetReach);
			
			printEffective = brandAdv.getMediumPrint() * Math.min((printReach + ((synergyPT * 
					brandAdv.getMediumTelevision() + synergyPR * brandAdv.getMediumRadio() + 
					synergyPI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumPrint()))), 1);
			
			teleEffective = brandAdv.getMediumTelevision() * Math.min((teleReach + ((synergyPT *
					brandAdv.getMediumPrint() + synergyTR * brandAdv.getMediumRadio() + synergyTI *
					brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumTelevision()))), 1);
			
			radioEffective = brandAdv.getMediumRadio() * Math.min((radioReach + ((synergyPR * 
					brandAdv.getMediumPrint() + synergyTR + brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumRadio()))), 1);
			
			internetEffective = brandAdv.getMediumInternet() * Math.min((internetReach + ((synergyPI *
					brandAdv.getMediumPrint() + synergyTI * brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumRadio())/Math.max(1, brandAdv.getMediumInternet()))), 1);
			
			totalEffectiveConst = printEffective + teleEffective + radioEffective + internetEffective ;
			
		}
		return totalEffectiveConst;
	}
	
	private  double calculateEffectiveConstDeprived(BrandAdvertisement brandAdv, int currentPeriod) {
		double printEffective = 0, teleEffective = 0, radioEffective = 0, internetEffective = 0;
		double totalEffectiveConst = 0;
		
		// Fetching all the constants required
		String iPrintReach = segmentConstantsService.getDeprivedConstByNameAndPeriod("PRINT_REACH", currentPeriod);
		String iSynergyPT = segmentConstantsService.getDeprivedConstByNameAndPeriod("SYNERGY_PRINT_TELEVISION", currentPeriod);
		String iSynergyPR = segmentConstantsService.getDeprivedConstByNameAndPeriod("SYNERGY_PRINT_RADIO", currentPeriod);
		String iSynergyPI = segmentConstantsService.getDeprivedConstByNameAndPeriod("SYNERGY_PRINT_INTERNET", currentPeriod);
		
		String iTelevisionReach = segmentConstantsService.getDeprivedConstByNameAndPeriod("TELEVISION_REACH", currentPeriod);
		String iSynergyTR = segmentConstantsService.getDeprivedConstByNameAndPeriod("SYNERGY_TELEVISION_RADIO", currentPeriod);
		String iSynergyTI = segmentConstantsService.getDeprivedConstByNameAndPeriod("SYNERGY_TELEVISION_INTERNET", currentPeriod);
		
		String iRadioReach = segmentConstantsService.getDeprivedConstByNameAndPeriod("RADIO_REACH", currentPeriod);
		String iSynergyRI = segmentConstantsService.getDeprivedConstByNameAndPeriod("SYNERGY_RADIO_INTERNET", currentPeriod);
		
		String iInternetReach = segmentConstantsService.getDeprivedConstByNameAndPeriod("INTERNET_REACH", currentPeriod);
		
		
		if (null != iPrintReach && null != iSynergyPT && null != iSynergyPR && null != iSynergyPI
				&& null != iTelevisionReach && null != iSynergyTR && null != iSynergyTI 
				&& null != iRadioReach && null != iSynergyRI && null != iInternetReach
				&& (!(iPrintReach.equalsIgnoreCase(""))) && (!(iSynergyPT.equalsIgnoreCase(""))) 
				&& (!(iSynergyPR.equalsIgnoreCase(""))) && (!(iSynergyPI.equalsIgnoreCase(""))) 
				&& (!(iTelevisionReach.equalsIgnoreCase(""))) && (!(iSynergyTR.equalsIgnoreCase(""))) 
				&& (!(iSynergyTI.equalsIgnoreCase(""))) && (!(iRadioReach.equalsIgnoreCase(""))) 
				&& (!(iSynergyRI.equalsIgnoreCase(""))) && (!(iInternetReach.equalsIgnoreCase(""))) ) {
			
			double printReach = Double.parseDouble(iPrintReach);
			double synergyPT = Double.parseDouble(iSynergyPT);
			double synergyPR = Double.parseDouble(iSynergyPR);
			double synergyPI = Double.parseDouble(iSynergyPI);
			
			double teleReach = Double.parseDouble(iTelevisionReach);
			double synergyTR = Double.parseDouble(iSynergyTR);
			double synergyTI = Double.parseDouble(iSynergyTI);
			
			double radioReach = Double.parseDouble(iRadioReach);
			double synergyRI = Double.parseDouble(iSynergyRI);
			
			double internetReach = Double.parseDouble(iInternetReach);
			
			printEffective = brandAdv.getMediumPrint() * Math.min((printReach + ((synergyPT * 
					brandAdv.getMediumTelevision() + synergyPR * brandAdv.getMediumRadio() + 
					synergyPI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumPrint()))), 1);
			
			teleEffective = brandAdv.getMediumTelevision() * Math.min((teleReach + ((synergyPT *
					brandAdv.getMediumPrint() + synergyTR * brandAdv.getMediumRadio() + synergyTI *
					brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumTelevision()))), 1);
			
			radioEffective = brandAdv.getMediumRadio() * Math.min((radioReach + ((synergyPR * 
					brandAdv.getMediumPrint() + synergyTR + brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumInternet())/Math.max(1, brandAdv.getMediumRadio()))), 1);
			
			internetEffective = brandAdv.getMediumInternet() * Math.min((internetReach + ((synergyPI *
					brandAdv.getMediumPrint() + synergyTI * brandAdv.getMediumTelevision() + 
					synergyRI * brandAdv.getMediumRadio())/Math.max(1, brandAdv.getMediumInternet()))), 1);
			
			totalEffectiveConst = printEffective + teleEffective + radioEffective + internetEffective ;
			
		}
		return totalEffectiveConst;
	}
	
	
	/**
	 * 
	 * This function is used to calculate and save the Brand Awareness for each brand and a segment.
	 * 
	 * Check if the current Period is 0, read the brand Awareness data from the brandAwareness metadata
	 * 	and populate in the IAdvBrandAwareness table.
	 * If the current period is anything other than 0, that is any transition other than 0 to 1, we will
	 * 	have to apply all the formulas to calculate the Brand Awareness 
	 *
	 * @param brand
	 * @param brandAdv
	 * @param advSegExpense
	 * @param currPeriod
	 * @param advEffSegExpense
	 * @return 
	 */
	
	private IAdvBrandAwareness saveAdvBrandAwareness(Brand brand, BrandAdvertisement brandAdv, 
			IAdvSegExpense advSegExpense, int currPeriod, IAdvEffSegExpense advEffSegExpense) {
		
		IAdvBrandAwareness advBrandAwareness = new IAdvBrandAwareness() ;
		
		// Checking the Current Period
		// If Period 0, read the data from the Brand Awareness Metadata
		if (currPeriod == 0) {
			BrandAwarenessMetadata brandAwarenessMetadata = 
				brandAwarenessMetadataService.getBrandAwarenessMetadataForBrand(brand); 
			
			advBrandAwareness.setBrand(brand);
			advBrandAwareness.setBluebloods_BrandAwareness(brandAwarenessMetadata.getBluebloods_BrandAwareness());
			advBrandAwareness.setRaffles_BrandAwareness(brandAwarenessMetadata.getRaffles_BrandAwareness());
			advBrandAwareness.setWannabes_BrandAwareness(brandAwarenessMetadata.getWannabes_BrandAwareness());
			advBrandAwareness.setStrugglers_BrandAwareness(brandAwarenessMetadata.getStrugglers_BrandAwareness());
			advBrandAwareness.setDeprived_BrandAwareness(brandAwarenessMetadata.getDeprived_BrandAwareness());
			advBrandAwareness.setTotalBrandAwareness(brandAwarenessMetadata.getTotalBrandAwareness());
			
			brandAdvertisementService.saveIAdvBrandAwareness(advBrandAwareness);
		}
		else {
			// If any period other than 0, process the existing data to calculate the new brand Awareness
			double blueBloods_ba = 0, raffles_ba = 0, wannabes_ba = 0, strugglers_ba = 0, deprived_ba = 0;
			
			blueBloods_ba = getBlueBloodBrandAwareness(currPeriod, brand);
			raffles_ba = getRafflesBrandAwareness(currPeriod, brand);
			wannabes_ba = getWannabesBrandAwareness(currPeriod, brand);
			strugglers_ba = getStrugglersBrandAwareness(currPeriod, brand);
			deprived_ba = getDeprivedBrandAwareness(currPeriod, brand);
			
			advBrandAwareness.setBrand(brand);
			advBrandAwareness.setBluebloods_BrandAwareness(blueBloods_ba);
			advBrandAwareness.setRaffles_BrandAwareness(raffles_ba);
			advBrandAwareness.setWannabes_BrandAwareness(wannabes_ba);
			advBrandAwareness.setStrugglers_BrandAwareness(strugglers_ba);
			advBrandAwareness.setDeprived_BrandAwareness(deprived_ba);
			advBrandAwareness.setTotalBrandAwareness(blueBloods_ba + raffles_ba + wannabes_ba + 
					strugglers_ba + deprived_ba );
			
			brandAdvertisementService.saveIAdvBrandAwareness(advBrandAwareness);
		}
		
		return advBrandAwareness;
	}
	
	
	private double getBlueBloodBrandAwareness(int currPeriod, Brand thisBrand) {
		
		HashMap increaseReqMap = new HashMap();
		double maxIncreaseReq = 0;
		double maxMarketEffort = 0;
		double sumNormSegEffExpense = 0;
		HashMap effIncreaseReqMap = new HashMap();
		HashMap normSegEffExp_bb = new HashMap();
		HashMap marketEffortMap = new HashMap();
		double marketEffort = 0;
		double thisBrandNormSefEffExp = 0;
		double toProcessBrandAwareness = 0;
		double efficiencyConstant = 0;
		double unAwareConst = 0, decayConstant = 0;
		double newBrandAwareness = 0;
		long thisBrandSegEffExp_bb = 0;
		double thisBrandMarketEffort = 0;
		
		//1. Getting all the brands in the system for the current period
		Brand[] currentPeriodBrands = brandService.getAllBrandsForPeriod(currPeriod) ;
		
		if (currentPeriodBrands != null && currentPeriodBrands.length > 0) {
			for (int i = 0; i< currentPeriodBrands.length; i++){
				//For each Brand in this period, get the Brand from the previous period.
				Brand previousPeriodBrand = brandService.
					getBrandByBrandNameAndPeriod(currentPeriodBrands[i].getBrandName(), (currPeriod - 1));
				
				if (previousPeriodBrand != null) {
					//Now get the BrandAwareness for the previousPeriodBrand
					IAdvBrandAwareness previousAdvBrandAwareness = 
						brandAdvertisementService.getBrandAwareness(previousPeriodBrand);
					if (previousAdvBrandAwareness != null ){ 
						double brandAwareness_bb = previousAdvBrandAwareness.getBluebloods_BrandAwareness();
						
						//checking if the brand being processed is the currentPeriodBrand
						if (thisBrand.getId() == currentPeriodBrands[i].getId())
							toProcessBrandAwareness = brandAwareness_bb;
						
						double increaseReq = (((brandAwareness_bb + 0.01)/ 
							(BrandAwarenessConst_a * (1 - ((brandAwareness_bb + 0.01)/BrandAwarenessConst_b)))) -
							(brandAwareness_bb/(BrandAwarenessConst_a * (1 - (brandAwareness_bb/BrandAwarenessConst_b)))));
							
						increaseReqMap.put(currentPeriodBrands[i], new Double(increaseReq));
							
							
					}
				}				
			}
		}
		
		// Now we need to find the maximum increaseReq and then effective increaseReq.
		Iterator itr = increaseReqMap.entrySet().iterator();
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			if ((((Double)entry.getValue()).doubleValue()) > maxIncreaseReq)
				maxIncreaseReq = ((Double)entry.getValue()).doubleValue();
		}

		//Now we need to find the Effective Increase Required for all Brands
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			effIncreaseReqMap.put((Brand)entry.getKey(), 
					new Double((((Double)entry.getValue()).doubleValue())/maxIncreaseReq));
		}
		
		
		//Now we need to calculate the Normalized Segment Effective Expense for Blue Bloods for all Brands 
		while (itr.hasNext()) {
			long segEffExpBlueBlood = 0;
			Map.Entry entry = (Map.Entry) itr.next();
			Brand currBrand = (Brand)entry.getKey();
			// Get IAdvEffSegExpense for this Brand
			IAdvEffSegExpense advEffSegExp = brandAdvertisementService.getBrandAdvEffSegExpense(currBrand);
			if (advEffSegExp != null)
				segEffExpBlueBlood = advEffSegExp.getBluebloods_EffSegExp();
			
			if (currBrand.getId() == thisBrand.getId())
				thisBrandSegEffExp_bb = segEffExpBlueBlood;
			
			double effIncreaseReq = ((Double)effIncreaseReqMap.get(currBrand)).doubleValue();
			normSegEffExp_bb.put(currBrand, new Double(segEffExpBlueBlood/effIncreaseReq));
			
		}
		
		// Now to calculate the sum of the normSegEffExp_bb calculated for all Brands
		Iterator bbItr = normSegEffExp_bb.entrySet().iterator();
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			sumNormSegEffExpense = sumNormSegEffExpense + (((Double)entry.getValue()).doubleValue());
		}

		//Now calculating Market Effort for all the Brands and also finding out the Maximum Market Effort
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			double tempMarketEffort = ((((Double)entry.getValue()).doubleValue())/sumNormSegEffExpense);
			marketEffortMap.put((Brand)entry.getKey(), new Double(tempMarketEffort));
			if (tempMarketEffort > maxMarketEffort)
				maxMarketEffort = tempMarketEffort;
		}
		
		// Now calculating the constants based upon the BrandAwareness of this Brand in the previous period.
		// Efficiency
		
		if (toProcessBrandAwareness >= BrandAwarenessEfficiencyConst1)
			efficiencyConstant = getRandomNumberBetween(0.9, 1);
		else
			efficiencyConstant = getRandomNumberBetween(0.7, 0.8);
			
		// sqRoot
		unAwareConst = Math.pow((1 - toProcessBrandAwareness), BrandAwarenessConst_c);
		
		// Decay
		decayConstant = BrandAwarenessConst_d * Math.pow(toProcessBrandAwareness, BrandAwarenessConst_e);
		
		thisBrandMarketEffort = ((Double)marketEffortMap.get(thisBrand)).doubleValue();
		
		// Calculating the new Brand  Awareness
		newBrandAwareness = toProcessBrandAwareness + 
			Math.min(((thisBrandMarketEffort * efficiencyConstant * unAwareConst * 
					thisBrandSegEffExp_bb)/BrandAwarenessDivideConst), 
					(1 - Math.pow(toProcessBrandAwareness, BrandAwarenessConst_f))) - 
					(decayConstant * toProcessBrandAwareness * (1 - (thisBrandMarketEffort/maxMarketEffort)));
					
		
		
		return newBrandAwareness;
	}
	
	private double getRafflesBrandAwareness(int currPeriod, Brand thisBrand) {
		
		HashMap increaseReqMap = new HashMap();
		double maxIncreaseReq = 0;
		double maxMarketEffort = 0;
		double sumNormSegEffExpense = 0;
		HashMap effIncreaseReqMap = new HashMap();
		HashMap normSegEffExp_raffles = new HashMap();
		HashMap marketEffortMap = new HashMap();
		double marketEffort = 0;
		double thisBrandNormSefEffExp = 0;
		double toProcessBrandAwareness = 0;
		double efficiencyConstant = 0;
		double unAwareConst = 0, decayConstant = 0;
		double newBrandAwareness = 0;
		long thisBrandSegEffExp_raffles = 0;
		double thisBrandMarketEffort = 0;
		
		//1. Getting all the brands in the system for the current period
		Brand[] currentPeriodBrands = brandService.getAllBrandsForPeriod(currPeriod) ;
		
		if (currentPeriodBrands != null && currentPeriodBrands.length > 0) {
			for (int i = 0; i< currentPeriodBrands.length; i++){
				//For each Brand in this period, get the Brand from the previous period.
				Brand previousPeriodBrand = brandService.
					getBrandByBrandNameAndPeriod(currentPeriodBrands[i].getBrandName(), (currPeriod - 1));
				
				if (previousPeriodBrand != null) {
					//Now get the BrandAwareness for the previousPeriodBrand
					IAdvBrandAwareness previousAdvBrandAwareness = 
						brandAdvertisementService.getBrandAwareness(previousPeriodBrand);
					if (previousAdvBrandAwareness != null ){ 
						double brandAwareness_raffles = previousAdvBrandAwareness.getRaffles_BrandAwareness();
						
						//checking if the brand being processed is the currentPeriodBrand
						if (thisBrand.getId() == currentPeriodBrands[i].getId())
							toProcessBrandAwareness = brandAwareness_raffles;
						
						double increaseReq = (((brandAwareness_raffles + 0.01)/ 
							(BrandAwarenessConst_a * (1 - ((brandAwareness_raffles + 0.01)/BrandAwarenessConst_b)))) -
							(brandAwareness_raffles/(BrandAwarenessConst_a * (1 - (brandAwareness_raffles/BrandAwarenessConst_b)))));
							
						increaseReqMap.put(currentPeriodBrands[i], new Double(increaseReq));
							
							
					}
				}				
			}
		}
		
		// Now we need to find the maximum increaseReq and then effective increaseReq.
		Iterator itr = increaseReqMap.entrySet().iterator();
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			if ((((Double)entry.getValue()).doubleValue()) > maxIncreaseReq)
				maxIncreaseReq = ((Double)entry.getValue()).doubleValue();
		}

		//Now we need to find the Effective Increase Required for all Brands
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			effIncreaseReqMap.put((Brand)entry.getKey(), 
					new Double((((Double)entry.getValue()).doubleValue())/maxIncreaseReq));
		}
		
		
		//Now we need to calculate the Normalized Segment Effective Expense for Raffles for all Brands 
		while (itr.hasNext()) {
			long segEffExpRaffles = 0;
			Map.Entry entry = (Map.Entry) itr.next();
			Brand currBrand = (Brand)entry.getKey();
			// Get IAdvEffSegExpense for this Brand
			IAdvEffSegExpense advEffSegExp = brandAdvertisementService.getBrandAdvEffSegExpense(currBrand);
			if (advEffSegExp != null)
				segEffExpRaffles = advEffSegExp.getRaffles_EffSegExp();
			
			if (currBrand.getId() == thisBrand.getId())
				thisBrandSegEffExp_raffles = segEffExpRaffles;
			
			double effIncreaseReq = ((Double)effIncreaseReqMap.get(currBrand)).doubleValue();
			normSegEffExp_raffles.put(currBrand, new Double(segEffExpRaffles/effIncreaseReq));
			
		}
		
		// Now to calculate the sum of the normSegEffExp_bb calculated for all Brands
		Iterator bbItr = normSegEffExp_raffles.entrySet().iterator();
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			sumNormSegEffExpense = sumNormSegEffExpense + (((Double)entry.getValue()).doubleValue());
		}

		//Now calculating Market Effort for all the Brands and also finding out the Maximum Market Effort
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			double tempMarketEffort = ((((Double)entry.getValue()).doubleValue())/sumNormSegEffExpense);
			marketEffortMap.put((Brand)entry.getKey(), new Double(tempMarketEffort));
			if (tempMarketEffort > maxMarketEffort)
				maxMarketEffort = tempMarketEffort;
		}
		
		// Now calculating the constants based upon the BrandAwareness of this Brand in the previous period.
		// Efficiency
		
		if (toProcessBrandAwareness >= BrandAwarenessEfficiencyConst1)
			efficiencyConstant = getRandomNumberBetween(0.9, 1);
		else
			efficiencyConstant = getRandomNumberBetween(0.7, 0.8);
			
		// sqRoot
		unAwareConst = Math.pow((1 - toProcessBrandAwareness), BrandAwarenessConst_c);
		
		// Decay
		decayConstant = BrandAwarenessConst_d * Math.pow(toProcessBrandAwareness, BrandAwarenessConst_e);
		
		thisBrandMarketEffort = ((Double)marketEffortMap.get(thisBrand)).doubleValue();
		
		// Calculating the new Brand  Awareness
		newBrandAwareness = toProcessBrandAwareness + 
			Math.min(((thisBrandMarketEffort * efficiencyConstant * unAwareConst * 
					thisBrandSegEffExp_raffles)/BrandAwarenessDivideConst), 
					(1 - Math.pow(toProcessBrandAwareness, BrandAwarenessConst_f))) - 
					(decayConstant * toProcessBrandAwareness * (1 - (thisBrandMarketEffort/maxMarketEffort)));
					
		
		
		return newBrandAwareness;

	}
	
	private double getWannabesBrandAwareness(int currPeriod, Brand thisBrand) {
		
		HashMap increaseReqMap = new HashMap();
		double maxIncreaseReq = 0;
		double maxMarketEffort = 0;
		double sumNormSegEffExpense = 0;
		HashMap effIncreaseReqMap = new HashMap();
		HashMap normSegEffExp_wannabes = new HashMap();
		HashMap marketEffortMap = new HashMap();
		double marketEffort = 0;
		double thisBrandNormSefEffExp = 0;
		double toProcessBrandAwareness = 0;
		double efficiencyConstant = 0;
		double unAwareConst = 0, decayConstant = 0;
		double newBrandAwareness = 0;
		long thisBrandSegEffExp_wannabes = 0;
		double thisBrandMarketEffort = 0;
		
		//1. Getting all the brands in the system for the current period
		Brand[] currentPeriodBrands = brandService.getAllBrandsForPeriod(currPeriod) ;
		
		if (currentPeriodBrands != null && currentPeriodBrands.length > 0) {
			for (int i = 0; i< currentPeriodBrands.length; i++){
				//For each Brand in this period, get the Brand from the previous period.
				Brand previousPeriodBrand = brandService.
					getBrandByBrandNameAndPeriod(currentPeriodBrands[i].getBrandName(), (currPeriod - 1));
				
				if (previousPeriodBrand != null) {
					//Now get the BrandAwareness for the previousPeriodBrand
					IAdvBrandAwareness previousAdvBrandAwareness = 
						brandAdvertisementService.getBrandAwareness(previousPeriodBrand);
					if (previousAdvBrandAwareness != null ){ 
						double brandAwareness_wannabes = previousAdvBrandAwareness.getWannabes_BrandAwareness();
						
						//checking if the brand being processed is the currentPeriodBrand
						if (thisBrand.getId() == currentPeriodBrands[i].getId())
							toProcessBrandAwareness = brandAwareness_wannabes;
						
						double increaseReq = (((brandAwareness_wannabes + 0.01)/ 
							(BrandAwarenessConst_a * (1 - ((brandAwareness_wannabes + 0.01)/BrandAwarenessConst_b)))) -
							(brandAwareness_wannabes/(BrandAwarenessConst_a * (1 - (brandAwareness_wannabes/BrandAwarenessConst_b)))));
							
						increaseReqMap.put(currentPeriodBrands[i], new Double(increaseReq));
							
							
					}
				}				
			}
		}
		
		// Now we need to find the maximum increaseReq and then effective increaseReq.
		Iterator itr = increaseReqMap.entrySet().iterator();
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			if ((((Double)entry.getValue()).doubleValue()) > maxIncreaseReq)
				maxIncreaseReq = ((Double)entry.getValue()).doubleValue();
		}

		//Now we need to find the Effective Increase Required for all Brands
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			effIncreaseReqMap.put((Brand)entry.getKey(), 
					new Double((((Double)entry.getValue()).doubleValue())/maxIncreaseReq));
		}
		
		
		//Now we need to calculate the Normalized Segment Effective Expense for Raffles for all Brands 
		while (itr.hasNext()) {
			long segEffExpWannabes = 0;
			Map.Entry entry = (Map.Entry) itr.next();
			Brand currBrand = (Brand)entry.getKey();
			// Get IAdvEffSegExpense for this Brand
			IAdvEffSegExpense advEffSegExp = brandAdvertisementService.getBrandAdvEffSegExpense(currBrand);
			if (advEffSegExp != null)
				segEffExpWannabes = advEffSegExp.getWannabes_EffSegExp();
			
			if (currBrand.getId() == thisBrand.getId())
				thisBrandSegEffExp_wannabes = segEffExpWannabes;
			
			double effIncreaseReq = ((Double)effIncreaseReqMap.get(currBrand)).doubleValue();
			normSegEffExp_wannabes.put(currBrand, new Double(segEffExpWannabes/effIncreaseReq));
			
		}
		
		// Now to calculate the sum of the normSegEffExp_bb calculated for all Brands
		Iterator bbItr = normSegEffExp_wannabes.entrySet().iterator();
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			sumNormSegEffExpense = sumNormSegEffExpense + (((Double)entry.getValue()).doubleValue());
		}

		//Now calculating Market Effort for all the Brands and also finding out the Maximum Market Effort
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			double tempMarketEffort = ((((Double)entry.getValue()).doubleValue())/sumNormSegEffExpense);
			marketEffortMap.put((Brand)entry.getKey(), new Double(tempMarketEffort));
			if (tempMarketEffort > maxMarketEffort)
				maxMarketEffort = tempMarketEffort;
		}
		
		// Now calculating the constants based upon the BrandAwareness of this Brand in the previous period.
		// Efficiency
		
		if (toProcessBrandAwareness >= BrandAwarenessEfficiencyConst1)
			efficiencyConstant = getRandomNumberBetween(0.9, 1);
		else
			efficiencyConstant = getRandomNumberBetween(0.7, 0.8);
			
		// sqRoot
		unAwareConst = Math.pow((1 - toProcessBrandAwareness), BrandAwarenessConst_c);
		
		// Decay
		decayConstant = BrandAwarenessConst_d * Math.pow(toProcessBrandAwareness, BrandAwarenessConst_e);
		
		thisBrandMarketEffort = ((Double)marketEffortMap.get(thisBrand)).doubleValue();
		
		// Calculating the new Brand  Awareness
		newBrandAwareness = toProcessBrandAwareness + 
			Math.min(((thisBrandMarketEffort * efficiencyConstant * unAwareConst * 
					thisBrandSegEffExp_wannabes)/BrandAwarenessDivideConst), 
					(1 - Math.pow(toProcessBrandAwareness, BrandAwarenessConst_f))) - 
					(decayConstant * toProcessBrandAwareness * (1 - (thisBrandMarketEffort/maxMarketEffort)));
					
		
		
		return newBrandAwareness;

	}
	
	private double getStrugglersBrandAwareness(int currPeriod, Brand thisBrand) {
		
		HashMap increaseReqMap = new HashMap();
		double maxIncreaseReq = 0;
		double maxMarketEffort = 0;
		double sumNormSegEffExpense = 0;
		HashMap effIncreaseReqMap = new HashMap();
		HashMap normSegEffExp_strugglers = new HashMap();
		HashMap marketEffortMap = new HashMap();
		double marketEffort = 0;
		double thisBrandNormSefEffExp = 0;
		double toProcessBrandAwareness = 0;
		double efficiencyConstant = 0;
		double unAwareConst = 0, decayConstant = 0;
		double newBrandAwareness = 0;
		long thisBrandSegEffExp_strugglers = 0;
		double thisBrandMarketEffort = 0;
		
		//1. Getting all the brands in the system for the current period
		Brand[] currentPeriodBrands = brandService.getAllBrandsForPeriod(currPeriod) ;
		
		if (currentPeriodBrands != null && currentPeriodBrands.length > 0) {
			for (int i = 0; i< currentPeriodBrands.length; i++){
				//For each Brand in this period, get the Brand from the previous period.
				Brand previousPeriodBrand = brandService.
					getBrandByBrandNameAndPeriod(currentPeriodBrands[i].getBrandName(), (currPeriod - 1));
				
				if (previousPeriodBrand != null) {
					//Now get the BrandAwareness for the previousPeriodBrand
					IAdvBrandAwareness previousAdvBrandAwareness = 
						brandAdvertisementService.getBrandAwareness(previousPeriodBrand);
					if (previousAdvBrandAwareness != null ){ 
						double brandAwareness_strugglers = 
							previousAdvBrandAwareness.getStrugglers_BrandAwareness();
						
						//checking if the brand being processed is the currentPeriodBrand
						if (thisBrand.getId() == currentPeriodBrands[i].getId())
							toProcessBrandAwareness = brandAwareness_strugglers;
						
						double increaseReq = (((brandAwareness_strugglers + 0.01)/ 
							(BrandAwarenessConst_a * (1 - ((brandAwareness_strugglers + 0.01)/BrandAwarenessConst_b)))) -
							(brandAwareness_strugglers/(BrandAwarenessConst_a * (1 - (brandAwareness_strugglers/BrandAwarenessConst_b)))));
							
						increaseReqMap.put(currentPeriodBrands[i], new Double(increaseReq));
							
							
					}
				}				
			}
		}
		
		// Now we need to find the maximum increaseReq and then effective increaseReq.
		Iterator itr = increaseReqMap.entrySet().iterator();
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			if ((((Double)entry.getValue()).doubleValue()) > maxIncreaseReq)
				maxIncreaseReq = ((Double)entry.getValue()).doubleValue();
		}

		//Now we need to find the Effective Increase Required for all Brands
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			effIncreaseReqMap.put((Brand)entry.getKey(), 
					new Double((((Double)entry.getValue()).doubleValue())/maxIncreaseReq));
		}
		
		
		//Now we need to calculate the Normalized Segment Effective Expense for Raffles for all Brands 
		while (itr.hasNext()) {
			long segEffExpStrugglers = 0;
			Map.Entry entry = (Map.Entry) itr.next();
			Brand currBrand = (Brand)entry.getKey();
			// Get IAdvEffSegExpense for this Brand
			IAdvEffSegExpense advEffSegExp = brandAdvertisementService.getBrandAdvEffSegExpense(currBrand);
			if (advEffSegExp != null)
				segEffExpStrugglers = advEffSegExp.getStrugglers_EffSegExp();
			
			if (currBrand.getId() == thisBrand.getId())
				thisBrandSegEffExp_strugglers = segEffExpStrugglers;
			
			double effIncreaseReq = ((Double)effIncreaseReqMap.get(currBrand)).doubleValue();
			normSegEffExp_strugglers.put(currBrand, new Double(segEffExpStrugglers/effIncreaseReq));
			
		}
		
		// Now to calculate the sum of the normSegEffExp_bb calculated for all Brands
		Iterator bbItr = normSegEffExp_strugglers.entrySet().iterator();
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			sumNormSegEffExpense = sumNormSegEffExpense + (((Double)entry.getValue()).doubleValue());
		}

		//Now calculating Market Effort for all the Brands and also finding out the Maximum Market Effort
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			double tempMarketEffort = ((((Double)entry.getValue()).doubleValue())/sumNormSegEffExpense);
			marketEffortMap.put((Brand)entry.getKey(), new Double(tempMarketEffort));
			if (tempMarketEffort > maxMarketEffort)
				maxMarketEffort = tempMarketEffort;
		}
		
		// Now calculating the constants based upon the BrandAwareness of this Brand in the previous period.
		// Efficiency
		
		if (toProcessBrandAwareness >= BrandAwarenessEfficiencyConst1)
			efficiencyConstant = getRandomNumberBetween(0.9, 1);
		else
			efficiencyConstant = getRandomNumberBetween(0.7, 0.8);
			
		// sqRoot
		unAwareConst = Math.pow((1 - toProcessBrandAwareness), BrandAwarenessConst_c);
		
		// Decay
		decayConstant = BrandAwarenessConst_d * Math.pow(toProcessBrandAwareness, BrandAwarenessConst_e);
		
		thisBrandMarketEffort = ((Double)marketEffortMap.get(thisBrand)).doubleValue();
		
		// Calculating the new Brand  Awareness
		newBrandAwareness = toProcessBrandAwareness + 
			Math.min(((thisBrandMarketEffort * efficiencyConstant * unAwareConst * 
					thisBrandSegEffExp_strugglers)/BrandAwarenessDivideConst), 
					(1 - Math.pow(toProcessBrandAwareness, BrandAwarenessConst_f))) - 
					(decayConstant * toProcessBrandAwareness * (1 - (thisBrandMarketEffort/maxMarketEffort)));
					
		
		
		return newBrandAwareness;

	}
		
	
	private double getDeprivedBrandAwareness(int currPeriod, Brand thisBrand) {
		
		HashMap increaseReqMap = new HashMap();
		double maxIncreaseReq = 0;
		double maxMarketEffort = 0;
		double sumNormSegEffExpense = 0;
		HashMap effIncreaseReqMap = new HashMap();
		HashMap normSegEffExp_deprived = new HashMap();
		HashMap marketEffortMap = new HashMap();
		double marketEffort = 0;
		double thisBrandNormSefEffExp = 0;
		double toProcessBrandAwareness = 0;
		double efficiencyConstant = 0;
		double unAwareConst = 0, decayConstant = 0;
		double newBrandAwareness = 0;
		long thisBrandSegEffExp_deprived = 0;
		double thisBrandMarketEffort = 0;
		
		//1. Getting all the brands in the system for the current period
		Brand[] currentPeriodBrands = brandService.getAllBrandsForPeriod(currPeriod) ;
		
		if (currentPeriodBrands != null && currentPeriodBrands.length > 0) {
			for (int i = 0; i< currentPeriodBrands.length; i++){
				//For each Brand in this period, get the Brand from the previous period.
				Brand previousPeriodBrand = brandService.
					getBrandByBrandNameAndPeriod(currentPeriodBrands[i].getBrandName(), (currPeriod - 1));
				
				if (previousPeriodBrand != null) {
					//Now get the BrandAwareness for the previousPeriodBrand
					IAdvBrandAwareness previousAdvBrandAwareness = 
						brandAdvertisementService.getBrandAwareness(previousPeriodBrand);
					if (previousAdvBrandAwareness != null ){ 
						double brandAwareness_deprived = 
							previousAdvBrandAwareness.getDeprived_BrandAwareness();
						
						//checking if the brand being processed is the currentPeriodBrand
						if (thisBrand.getId() == currentPeriodBrands[i].getId())
							toProcessBrandAwareness = brandAwareness_deprived;
						
						double increaseReq = (((brandAwareness_deprived + 0.01)/ 
							(BrandAwarenessConst_a * (1 - ((brandAwareness_deprived + 0.01)/BrandAwarenessConst_b)))) -
							(brandAwareness_deprived/(BrandAwarenessConst_a * (1 - (brandAwareness_deprived/BrandAwarenessConst_b)))));
							
						increaseReqMap.put(currentPeriodBrands[i], new Double(increaseReq));
							
							
					}
				}				
			}
		}
		
		// Now we need to find the maximum increaseReq and then effective increaseReq.
		Iterator itr = increaseReqMap.entrySet().iterator();
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			if ((((Double)entry.getValue()).doubleValue()) > maxIncreaseReq)
				maxIncreaseReq = ((Double)entry.getValue()).doubleValue();
		}

		//Now we need to find the Effective Increase Required for all Brands
		while (itr.hasNext()) {
			Map.Entry entry = (Map.Entry) itr.next();
			effIncreaseReqMap.put((Brand)entry.getKey(), 
					new Double((((Double)entry.getValue()).doubleValue())/maxIncreaseReq));
		}
		
		
		//Now we need to calculate the Normalized Segment Effective Expense for Raffles for all Brands 
		while (itr.hasNext()) {
			long segEffExpDeprived = 0;
			Map.Entry entry = (Map.Entry) itr.next();
			Brand currBrand = (Brand)entry.getKey();
			// Get IAdvEffSegExpense for this Brand
			IAdvEffSegExpense advEffSegExp = brandAdvertisementService.getBrandAdvEffSegExpense(currBrand);
			if (advEffSegExp != null)
				segEffExpDeprived = advEffSegExp.getDeprived_EffSegExp();
			
			if (currBrand.getId() == thisBrand.getId())
				thisBrandSegEffExp_deprived = segEffExpDeprived;
			
			double effIncreaseReq = ((Double)effIncreaseReqMap.get(currBrand)).doubleValue();
			normSegEffExp_deprived.put(currBrand, new Double(segEffExpDeprived/effIncreaseReq));
			
		}
		
		// Now to calculate the sum of the normSegEffExp_bb calculated for all Brands
		Iterator bbItr = normSegEffExp_deprived.entrySet().iterator();
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			sumNormSegEffExpense = sumNormSegEffExpense + (((Double)entry.getValue()).doubleValue());
		}

		//Now calculating Market Effort for all the Brands and also finding out the Maximum Market Effort
		while (bbItr.hasNext()) {
			Map.Entry entry = (Map.Entry) bbItr.next();
			double tempMarketEffort = ((((Double)entry.getValue()).doubleValue())/sumNormSegEffExpense);
			marketEffortMap.put((Brand)entry.getKey(), new Double(tempMarketEffort));
			if (tempMarketEffort > maxMarketEffort)
				maxMarketEffort = tempMarketEffort;
		}
		
		// Now calculating the constants based upon the BrandAwareness of this Brand in the previous period.
		// Efficiency
		
		if (toProcessBrandAwareness >= BrandAwarenessEfficiencyConst1)
			efficiencyConstant = getRandomNumberBetween(0.9, 1);
		else
			efficiencyConstant = getRandomNumberBetween(0.7, 0.8);
			
		// sqRoot
		unAwareConst = Math.pow((1 - toProcessBrandAwareness), BrandAwarenessConst_c);
		
		// Decay
		decayConstant = BrandAwarenessConst_d * Math.pow(toProcessBrandAwareness, BrandAwarenessConst_e);
		
		thisBrandMarketEffort = ((Double)marketEffortMap.get(thisBrand)).doubleValue();
		
		// Calculating the new Brand  Awareness
		newBrandAwareness = toProcessBrandAwareness + 
			Math.min(((thisBrandMarketEffort * efficiencyConstant * unAwareConst * 
					thisBrandSegEffExp_deprived)/BrandAwarenessDivideConst), 
					(1 - Math.pow(toProcessBrandAwareness, BrandAwarenessConst_f))) - 
					(decayConstant * toProcessBrandAwareness * (1 - (thisBrandMarketEffort/maxMarketEffort)));
					
		
		
		return newBrandAwareness;

	}
	
	private double getRandomNumberBetween(double min, double max) {
		
		double manualRandom = min + (Math.random() * (max - min));
		return manualRandom;
	}
}

	
