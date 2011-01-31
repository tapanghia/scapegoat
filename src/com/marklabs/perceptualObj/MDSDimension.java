package com.marklabs.perceptualObj;

public enum MDSDimension {

	ECONOMY("economy"),
	QUALITY("quality"),
	APPEAL("appeal");

	private String mdsDimenstion;
	
	private MDSDimension(String mdsDimen) {
		mdsDimenstion = mdsDimen;
	}

	public String getMDSDimension() {
		return this.mdsDimenstion;
	}
	
	
	
}
