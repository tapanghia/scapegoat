package com.marklabs.marketResearchStudies;

public class Report {

	private long id;
	private String reportName;
	private String reportAppName;
	private double reportCost;
	private int period;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getReportName() {
		return reportName;
	}

	public void setReportName(String reportName) {
		this.reportName = reportName;
	}

	public double getReportCost() {
		return reportCost;
	}

	public void setReportCost(double reportCost) {
		this.reportCost = reportCost;
	}

	public int getPeriod() {
		return period;
	}

	public void setPeriod(int period) {
		this.period = period;
	}

	public String getReportAppName() {
		return reportAppName;
	}

	public void setReportAppName(String reportAppName) {
		this.reportAppName = reportAppName;
	}

	
}
