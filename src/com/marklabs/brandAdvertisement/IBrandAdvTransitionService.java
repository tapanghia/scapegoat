package com.marklabs.brandAdvertisement;

import com.marklabs.teams.Team;

public interface IBrandAdvTransitionService {
	
	public static final double BrandAwarenessConst_a = 5;
	public static final double BrandAwarenessConst_b = 1.2;
	public static final double BrandAwarenessConst_c = 0.5;
	public static final double BrandAwarenessConst_d = 0.5;
	public static final double BrandAwarenessConst_e = 2;
	public static final double BrandAwarenessConst_f = 0.2;
	public static final double BrandAwarenessEfficiencyConst1 = 0.5;
	public static final double BrandAwarenessDivideConst = 2000;
	
	
	/**
	 * This function will be responsible to calculate
	 * @param selectedTeam
	 */
	public void transitionBrandAdvForTeam(Team selectedTeam, String currentPeriod);
}
