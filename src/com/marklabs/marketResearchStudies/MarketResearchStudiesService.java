package com.marklabs.marketResearchStudies;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.teams.Team;

public class MarketResearchStudiesService extends HibernateDaoSupport implements IMarketResearchStudiesService {

	@Override
	public List<ReportTeamPurchaseMap> getReportsAccessForTeamAndPeriod(Team team, int period) {
		
		if (team != null && period >= 0) {

			String queryString = "from ReportTeamPurchaseMap rtp where rtp.team.id = " + team.getId() + " and rtp.currentPeriod = "+ period;
			List<ReportTeamPurchaseMap> reportTeamPurchaseMapListing = getHibernateTemplate().find(queryString);
			
			if (reportTeamPurchaseMapListing != null && reportTeamPurchaseMapListing.size() > 0) 
				return reportTeamPurchaseMapListing;
		}
	
		return null;
	}

	@Override
	public ReportTeamPurchaseMap getReportTeamPurchaseMap(long teamId,
			long reportId, int period) {

		String queryString = 
			"from ReportTeamPurchaseMap rtp where rtp.team.id = " + teamId + " and rtp.report.id = " + reportId + " and rtp.currentPeriod = " + period;
		List<ReportTeamPurchaseMap> reportTeamPurchaseMapListing = getHibernateTemplate().find(queryString);
		
		if (reportTeamPurchaseMapListing != null && reportTeamPurchaseMapListing.size() > 0) 
			return reportTeamPurchaseMapListing.get(0);
		
		
		return null;
	}

	@Override
	public void updateReportTeamPurchaseMap(
			ReportTeamPurchaseMap thisReportTeamPurchaseMap) {
		getHibernateTemplate().update(thisReportTeamPurchaseMap);
		
	}

	@Override
	public Report getReportOnReportId(long reportId) {
		String queryString = "from Report where id = "+reportId;
		List<Report> reportList = getHibernateTemplate().find(queryString);
		if (reportList != null && reportList.size() > 0)
			return reportList.get(0);
		return null;
	}

	@Override
	public boolean getReportAccessForTeamAndPeriod(Team team, int period, String reportAppName) {
		System.out.println("In getReportAccessForTeamAndPeriod");
		if (team != null && period >= 0 && reportAppName != null && !("".equalsIgnoreCase(reportAppName))) {

			Report thisReport = getReportOnNameAndPeriod(reportAppName, period);
			if (thisReport != null) {
				String queryString = "from ReportTeamPurchaseMap rtp where rtp.team.id = " + team.getId() + 
					" and rtp.currentPeriod = "+ period + " and rtp.report.id = " + thisReport.getId();
				List<ReportTeamPurchaseMap> reportTeamPurchaseMapListing = getHibernateTemplate().find(queryString);
				
				if (reportTeamPurchaseMapListing != null && reportTeamPurchaseMapListing.size() > 0) {
					ReportTeamPurchaseMap thisReportTeamPurchaseMap = reportTeamPurchaseMapListing.get(0);
					if (thisReportTeamPurchaseMap.getAccessFlag() != null && thisReportTeamPurchaseMap.getAccessFlag().equalsIgnoreCase("Y"))
						return true;
				}
				else {
					return true;
				}
			}
			else {
				return true;
			}
		}
	
		return false;
	}

	@Override
	public Report getReportOnNameAndPeriod(String reportAppName, int period) {
		String queryString = "from Report rep where rep.reportAppName = '" + reportAppName + "' and rep.period = " + period;
		List<Report> reportList = getHibernateTemplate().find(queryString);
		
		if (reportList != null && reportList.size() > 0)
			return reportList.get(0);
		return null;
	}
	
	
	

}
