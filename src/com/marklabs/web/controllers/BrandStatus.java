package com.marklabs.web.controllers;

public enum BrandStatus {

	NEW("New"), 
	MAINTAINED("Maintained"), 
	MODIFIED("Modified"), 
	COST_IMPROVEMENT("Cost Improvement");
	
	private String statusDesc;
	
	private BrandStatus(String status) {
		this.statusDesc = status;
	}
	
	public String getBrandStatus() {
		return statusDesc;
	}
	
	
}
