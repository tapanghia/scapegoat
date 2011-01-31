package com.marklabs.web.controllers;

import java.io.IOException;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.brandSpecifications.BrandSpecs;
import com.marklabs.brandSpecifications.IBrandSpecsService;
import com.marklabs.brands.Brand;
import com.marklabs.brands.IBrandService;
import com.marklabs.teams.Team;

public class ProdPricingController extends MultiActionController {
	
	IBrandService brandService;
	IBrandSpecsService brandSpecsService;
	
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
	 * Default method of this controller. Will be invoked, when no action is passed.
	 * @param request
	 * @param response
	 * @return
	 */
	public ModelAndView index (HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("prodPricingHome");
		
		Team loggedInTeam = (Team)request.getSession().getAttribute(Constants.TEAM_OBJECT);
		int currPeriod = (Integer)request.getSession().getAttribute(Constants.CURRENT_PERIOD); 
		List<Brand> resultBrands = brandService.getAllBrandsForTeamCurrentPeriod(loggedInTeam, currPeriod);
		
		mav.addObject(Constants.EXISTING_BRANDS, resultBrands);
		
		if (request.getSession().getAttribute(Constants.SELECTED_BRAND) == null && 
				resultBrands.size() > 0) {
			
			Brand thisBrand = resultBrands.get(0);
			// This is BrandSpecs for the Brand in current period
			BrandSpecs thisPeriodBrandSpecs = brandSpecsService.getBrandSpecsOnBrandId(thisBrand.getId());
		
			// Now getting the Brand with the same name in the previous period. And then will get its Specs
			Brand previousPeriodBrand = 
				brandService.getBrandOnNameAndPeriod(thisBrand.getBrandName(), (currPeriod - 1) ); 
			
			BrandSpecs previousPeriodBrandSpecs = brandSpecsService.getBrandSpecsOnBrand(previousPeriodBrand);
			
			request.getSession().setAttribute(Constants.SELECTED_BRAND, resultBrands.get(0));
			request.getSession().setAttribute(Constants.PREVIOUSPERIOD_BRANDSPECS, previousPeriodBrandSpecs);
			request.getSession().setAttribute(Constants.THISPERIOD_BRANDSPECS, thisPeriodBrandSpecs);
			
		}
		
		if (request.getParameter("selectedBrandId") != null) {
			long selectedBrandId = Long.parseLong(request.getParameter("selectedBrandId"));
			
			Brand thisBrand = brandService.getBrandonId(selectedBrandId);
			
			
			// This is BrandSpecs for the Brand in current period
			BrandSpecs thisPeriodBrandSpecs = brandSpecsService.getBrandSpecsOnBrandId(selectedBrandId);
		
			// Now getting the Brand with the same name in the previous period. And then will get its Specs
			Brand previousPeriodBrand = 
				brandService.getBrandOnNameAndPeriod(thisBrand.getBrandName(), (currPeriod - 1) ); 
			
			BrandSpecs previousPeriodBrandSpecs = brandSpecsService.getBrandSpecsOnBrand(previousPeriodBrand);
			
			request.getSession().removeAttribute(Constants.SELECTED_BRAND);
			request.getSession().removeAttribute(Constants.PREVIOUSPERIOD_BRANDSPECS);
			request.getSession().removeAttribute(Constants.THISPERIOD_BRANDSPECS);
			
			request.getSession().setAttribute(Constants.SELECTED_BRAND, thisBrand);
			request.getSession().setAttribute(Constants.PREVIOUSPERIOD_BRANDSPECS, previousPeriodBrandSpecs);
			request.getSession().setAttribute(Constants.THISPERIOD_BRANDSPECS, thisPeriodBrandSpecs);
		}
		else if (request.getSession().getAttribute(Constants.SELECTED_BRAND) != null) {
			
			Brand preSelectedBrand = (Brand) request.getSession().getAttribute(Constants.SELECTED_BRAND);
			
			if (preSelectedBrand != null) {
				// This is BrandSpecs for the Brand in current period
				BrandSpecs thisPeriodBrandSpecs = brandSpecsService.getBrandSpecsOnBrandId(preSelectedBrand.getId());
			
				// Now getting the Brand with the same name in the previous period. And then will get its Specs
				Brand previousPeriodBrand = 
					brandService.getBrandOnNameAndPeriod(preSelectedBrand.getBrandName(), (currPeriod - 1) ); 
				
				BrandSpecs previousPeriodBrandSpecs = brandSpecsService.getBrandSpecsOnBrand(previousPeriodBrand);
				
				request.getSession().removeAttribute(Constants.SELECTED_BRAND);
				request.getSession().removeAttribute(Constants.PREVIOUSPERIOD_BRANDSPECS);
				request.getSession().removeAttribute(Constants.THISPERIOD_BRANDSPECS);
				
				request.getSession().setAttribute(Constants.SELECTED_BRAND, preSelectedBrand);
				request.getSession().setAttribute(Constants.PREVIOUSPERIOD_BRANDSPECS, previousPeriodBrandSpecs);
				request.getSession().setAttribute(Constants.THISPERIOD_BRANDSPECS, thisPeriodBrandSpecs);
			}
		}
			
		
		return mav;
	}

	public ModelAndView loadProdPricingFrame (HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("prodPricingFrame");
		return mav;
	}
	
	public ModelAndView saveThisPeriodBrandSpecs(HttpServletRequest request, HttpServletResponse response) {
		
		String thisPeriodBrandProdLevel = request.getParameter("thisPeriodBrandProdLevel");
		String thisPeriodBrandRetailPrice = request.getParameter("thisPeriodBrandRetailPrice");
		
		if (thisPeriodBrandProdLevel != null && !("".equals(thisPeriodBrandProdLevel)) &&
				thisPeriodBrandRetailPrice != null && !("".equals(thisPeriodBrandRetailPrice)) &&
				request.getSession().getAttribute(Constants.SELECTED_BRAND) != null) {
			long brandProdLevel = Long.parseLong(thisPeriodBrandProdLevel);
			long brandRetailPrice = Long.parseLong(thisPeriodBrandRetailPrice);
			
			BrandSpecs thisPeriodBrandSpecs = 
				brandSpecsService.getBrandSpecsOnBrand((Brand) request.getSession().getAttribute(Constants.SELECTED_BRAND));
			thisPeriodBrandSpecs.setProductionLevel(brandProdLevel);
			thisPeriodBrandSpecs.setRetailPrice(brandRetailPrice);
			
			brandSpecsService.updateBrandSpecs(thisPeriodBrandSpecs);
			
			// updating the brandSpecs object stored in session
			if ( request.getSession().getAttribute(Constants.THISPERIOD_BRANDSPECS) != null ) {
				request.getSession().removeAttribute(Constants.THISPERIOD_BRANDSPECS);
			}
			request.getSession().setAttribute(Constants.THISPERIOD_BRANDSPECS, thisPeriodBrandSpecs);
			
		}
		
		try {
			response.sendRedirect("productionPricing.htm");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
