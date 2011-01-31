package com.marklabs.web.controllers;

public enum DeleteFlag {

	DELETEFLAG_YES("Y"), DELETEFLAG_NO("N");

	private String deleteFlag;
	
	private DeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	public String getDeletFlag() {
		return deleteFlag;
	}
	
	
}
