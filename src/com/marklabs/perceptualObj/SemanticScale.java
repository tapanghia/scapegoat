package com.marklabs.perceptualObj;

public enum SemanticScale {

	DESIGN("design"),
	FRAGRANCE("fragrance"),
	PERSISTENCE("persistence"),
	PACKAGING("packaging"),
	SAFETY("safety"),
	PRICE("price");
	
	private String semanticScale;
	
	private SemanticScale(String semanticScale) {
		this.semanticScale = semanticScale;
	}
	
	public String getSemanticScale() {
		return this.semanticScale;
	}
	
	
}
