package com.marklabs.perceptualObj;

public enum PerceptualObjectiveScales {

	SEMANTIC_SCALE("SemanticScale"),
	MDS_DIMENSION("MDSDimension"),
	NO_OBJECTIVE("NoObjective");

	private String perceptualObjScale;
	
	private PerceptualObjectiveScales(String perceptualObjScale) {
		this.perceptualObjScale = perceptualObjScale;
	}

	public String getPerceptualObjScale() {
		return this.perceptualObjScale;
	}
	
}
