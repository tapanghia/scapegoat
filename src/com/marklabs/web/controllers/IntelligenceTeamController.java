package com.marklabs.web.controllers;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.marketResearchStudies.IMarketResearchStudiesService;
import com.marklabs.marketResearchStudies.Report;
import com.marklabs.marketResearchStudies.ReportTeamPurchaseMap;
import com.marklabs.teams.ITeamService;
import com.marklabs.teams.Team;

public class IntelligenceTeamController extends MultiActionController {

	
	IMarketResearchStudiesService marketResearchStudiesService;
	ITeamService teamService;
	
	
	
	public ITeamService getTeamService() {
		return teamService;
	}

	public void setTeamService(ITeamService teamService) {
		this.teamService = teamService;
	}

	public IMarketResearchStudiesService getMarketResearchStudiesService() {
		return marketResearchStudiesService;
	}

	public void setMarketResearchStudiesService(
			IMarketResearchStudiesService marketResearchStudiesService) {
		this.marketResearchStudiesService = marketResearchStudiesService;
	}

	/**
	 * Default method, If the action is not passed, when the control is passed to this controller, 
	 * 		this method, will be invoked. 
	 * @param request
	 * @param response
	 * @return
	 */
	
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.setAttribute("CURRENT_LINK",Constants.INTELLIGENCE_LINK);
		
		ModelAndView mav = new ModelAndView("intelligenceTeamHome");
		
		
		return mav;
	}
	
	public ModelAndView conductMarketResearch(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("conductMarketResearch");
		
		Team team = (Team) request.getSession().getAttribute(Constants.TEAM_OBJECT);
		int currentPeriod = (Integer) request.getSession().getAttribute(Constants.CURRENT_PERIOD);
		Team loggedInTeam = (Team)request.getSession().getAttribute(Constants.TEAM_OBJECT);
		
		
		// calculating the initial cost of all reports purchased.
		double initialTotalReportPurchaseCost = 0, updatedTotalReportPurchaseCost = 0;
		
		
		List<ReportTeamPurchaseMap> reportTeamPurchaseMapList = 
			marketResearchStudiesService.getReportsAccessForTeamAndPeriod(team, currentPeriod + 1);
		
		Iterator<ReportTeamPurchaseMap> reportPurchaseItr = reportTeamPurchaseMapList.iterator();
		while (reportPurchaseItr.hasNext()) {
			ReportTeamPurchaseMap reportTeamPurchaseMap = (ReportTeamPurchaseMap) reportPurchaseItr.next();
			if (reportTeamPurchaseMap.getAccessFlag().equalsIgnoreCase(DeleteFlag.DELETEFLAG_YES.getDeletFlag())) {
				initialTotalReportPurchaseCost = initialTotalReportPurchaseCost + reportTeamPurchaseMap.getReport().getReportCost();
				
			}
		}
		
		
		String checkedReportIds = (String) request.getParameter("checkedReportIds");
		String unCheckedReportIds = (String) request.getParameter("unCheckedReportIds");
		
		// Now calculating the reports purchase cost after decides to edit his reports purchase
		if (checkedReportIds != null && !("".equals(checkedReportIds))) {
			String testCheckedReportIds = checkedReportIds.substring(0, checkedReportIds.length() - 1);
			String[] reportIds = testCheckedReportIds.split(",");
			
			for (String reportIdStr:reportIds) {
				long reportId = Long.parseLong(reportIdStr);
				Report purchasedReport = marketResearchStudiesService.getReportOnReportId(reportId);
				updatedTotalReportPurchaseCost = updatedTotalReportPurchaseCost + purchasedReport.getReportCost();
			}
		}
		
		long teamCurrentBudget = (Long)request.getSession().getAttribute(Constants.CURRENT_BUDGET);
		long updatedBudget = teamCurrentBudget - ((long)updatedTotalReportPurchaseCost - (long)initialTotalReportPurchaseCost);
		
		if (updatedBudget > 0) {
		
			if (checkedReportIds != null && !("".equals(checkedReportIds))) {
				checkedReportIds = checkedReportIds.substring(0, checkedReportIds.length() - 1);
				String[] reportIds = checkedReportIds.split(",");
				
				for (String reportIdStr:reportIds) {
					long reportId = Long.parseLong(reportIdStr);
					ReportTeamPurchaseMap thisReportTeamPurchaseMap = 
						marketResearchStudiesService.getReportTeamPurchaseMap(team.getId(), reportId, (currentPeriod+1));
					
					if (thisReportTeamPurchaseMap == null)
						System.out.println("reportTeamPurchaseMap is null for reportId: "+reportId + ", teamId: " 
								+ team.getId() + " and period: " + (currentPeriod + 1));
					
					thisReportTeamPurchaseMap.setAccessFlag(DeleteFlag.DELETEFLAG_YES.getDeletFlag());
					marketResearchStudiesService.updateReportTeamPurchaseMap(thisReportTeamPurchaseMap);
				}
			}
			
			if (unCheckedReportIds != null && !("".equals(unCheckedReportIds))) {
				unCheckedReportIds = unCheckedReportIds.substring(0, unCheckedReportIds.length() - 1);
				String[] reportIds = unCheckedReportIds.split(",");
				
				for (String reportIdStr:reportIds) {
					long reportId = Long.parseLong(reportIdStr);
					ReportTeamPurchaseMap thisReportTeamPurchaseMap = 
						marketResearchStudiesService.getReportTeamPurchaseMap(team.getId(), reportId, (currentPeriod+1));
					
					thisReportTeamPurchaseMap.setAccessFlag(DeleteFlag.DELETEFLAG_NO.getDeletFlag());
					marketResearchStudiesService.updateReportTeamPurchaseMap(thisReportTeamPurchaseMap);
				}
			}
	
			request.getSession().removeAttribute(Constants.CURRENT_BUDGET);
			request.getSession().setAttribute(Constants.CURRENT_BUDGET, updatedBudget);
			
			
			loggedInTeam.setTeamCurrentPeriodBudget(updatedBudget);
			teamService.updateTeam(loggedInTeam);
			
		}	
		
		// Fetching the Report Team purchase Listing from Database to display on the Market Research 
		List<ReportTeamPurchaseMap> reportTeamPurchaseList = 
			marketResearchStudiesService.getReportsAccessForTeamAndPeriod(team, (currentPeriod + 1));
					
		mav.addObject(Constants.REPORT_TEAM_PURCHASE_MAP_LISTING, reportTeamPurchaseList);
		
		
		return mav;
	}
	
	public ModelAndView billReportTitles (HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("billReportTitles");
	
		Team thisTeam = (Team)request.getSession().getAttribute(Constants.TEAM_OBJECT);
		int currentPeriod = (Integer)request.getSession().getAttribute(Constants.CURRENT_PERIOD);
		
		// Fetching the Report Team purchase Listing from Database to display on the Market Research 
		List<ReportTeamPurchaseMap> reportTeamPurchaseList = 
			marketResearchStudiesService.getReportsAccessForTeamAndPeriod(thisTeam, (currentPeriod + 1));
		
				
		mav.addObject(Constants.REPORT_TEAM_PURCHASE_MAP_LISTING, reportTeamPurchaseList);
		return mav;
	}
}
