package com.marklabs.perceptualObj;

public enum SemanticScale {

	DESIGN("packaging"),
	FRAGRANCE("fragrance"),
	PERSISTENCE("persistence"),
	PACKAGING("packaging"),
	SAFETY("safety");
	
	private String semanticScale;
	
	private SemanticScale(String semanticScale) {
		this.semanticScale = semanticScale;
	}
	
	public String getSemanticScale() {
		return this.semanticScale;
	}
	
	
}
