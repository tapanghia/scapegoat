package com.marklabs.prepareDataForPeriod0;

public interface IPrepareDataForPeriod0Service {

	public final static int CURRENT_PERIOD = 0;
	public final static int PROJECT_FINISH_PERIOD = 0;
	public final static String IS_AVAILABLE = "Y";
	public final static long BUDGET_DEFICIT = 0;
	
	public final static String BRAND_STATUS = "Maintained";
	
	public void prepareDataForPeriod_0_ResearchProjects();
	public void prepareDataForPeriod_0_Brands();
	public void prepareDataForPeriod_0_Advertisements();
	public void prepareDataForPeriod_0_BrandSpecs();
	public void prepareDataForPeriod_0_SalesForce();
	public void prepareDataForPeriod_0_MarginOffered();
}
