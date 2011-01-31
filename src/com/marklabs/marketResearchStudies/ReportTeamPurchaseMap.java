package com.marklabs.marketResearchStudies;

import com.marklabs.teams.Team;

public class ReportTeamPurchaseMap {

	private long id;
	private Team team;
	private Report report;
	private int currentPeriod;
	private String accessFlag;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public Report getReport() {
		return report;
	}

	public void setReport(Report report) {
		this.report = report;
	}

	public int getCurrentPeriod() {
		return currentPeriod;
	}

	public void setCurrentPeriod(int currentPeriod) {
		this.currentPeriod = currentPeriod;
	}

	public String getAccessFlag() {
		return accessFlag;
	}

	public void setAccessFlag(String accessFlag) {
		this.accessFlag = accessFlag;
	}

}
