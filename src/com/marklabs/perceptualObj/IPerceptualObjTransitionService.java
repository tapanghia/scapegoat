package com.marklabs.perceptualObj;

import com.marklabs.teams.Team;

public interface IPerceptualObjTransitionService {

	public final static double ISEMANTIC_CALC_CONST1 = 6;
	public final static double ISEMANTIC_CALC_CONST2 = 99;
	
	public final static String SEMANTIC_SCALE = "Semantic" ;
	public final static String MDS_DIMENSION = "MDS" ;
	
	public final static String SEMANTIC_SCALE_DESIGN = "Design" ;
	public final static String SEMANTIC_SCALE_FRAGRANCE = "Fragrance" ;
	public final static String SEMANTIC_SCALE_PERSISTENCE = "Persistence" ;
	public final static String SEMANTIC_SCALE_PACKAGING = "Packaging" ;
	public final static String SEMANTIC_SCALE_SAFETY = "Safety" ;
	public final static String SEMANTIC_SCALE_PRICE = "Price" ;
	
	public final static String MDS_DIMENSION_ECONOMY = "Economy" ;
	public final static String MDS_DIMENSION_QUALITY = "Quality" ;
	public final static String MDS_DIMENSION_APPEAL = "Appeal" ;
	
	public void transitionPerceptualObjForTeam(Team selectedTeam, String currentPeriod);
	
}
