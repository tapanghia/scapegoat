package com.marklabs.marketResearchStudies;

import java.util.List;

import com.marklabs.teams.Team;

public interface IMarketResearchStudiesService {

	public List<ReportTeamPurchaseMap> getReportsAccessForTeamAndPeriod(Team team, int period);
	
	public ReportTeamPurchaseMap getReportTeamPurchaseMap(long teamId, long reportId, int period);
	
	public void updateReportTeamPurchaseMap(ReportTeamPurchaseMap thisReportTeamPurchaseMap);
	
	public Report getReportOnReportId(long reportId);

	public boolean getReportAccessForTeamAndPeriod(Team team, int period, String reportName);
	
	public Report getReportOnNameAndPeriod(String reportName, int period);
	
}
