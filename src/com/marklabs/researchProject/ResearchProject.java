package com.marklabs.researchProject;

import java.util.Set;

import com.marklabs.teams.Team;

/**
 * @date 05/01/2010
 * @author Tapan
 *
 */

public class ResearchProject implements java.io.Serializable {
	
	private long id;
	private String projectName;
	private int design;
	private int fragrance;
	private int persistence;
	private int packaging;
	private int safety;
	private long minimumBaseCost;  //calculated internally
	private long requestedBaseCost;
	private long requiredBudgetAtMinBC;   //calculated internally
	private long requiredBudgetAtReqBC;
	private long allocatedBudget;
	private int currentPeriod;
	private long budgetDeficit;
	private String isAvailable;  // Can take only 2 values yes or no (very similar to deleteflag)
	private int projectFinishPeriod;  // period in which the project is finished
	
	private Set brands;
	private Team team;
	
	
	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}
	/**
	 * @return the projectName
	 */
	public String getProjectName() {
		return projectName;
	}
	/**
	 * @param projectName the projectName to set
	 */
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	/**
	 * @return the design
	 */
	public int getDesign() {
		return design;
	}
	/**
	 * @param design the design to set
	 */
	public void setDesign(int design) {
		this.design = design;
	}
	/**
	 * @return the fragrance
	 */
	public int getFragrance() {
		return fragrance;
	}
	/**
	 * @param fragrance the fragrance to set
	 */
	public void setFragrance(int fragrance) {
		this.fragrance = fragrance;
	}
	/**
	 * @return the persistence
	 */
	public int getPersistence() {
		return persistence;
	}
	/**
	 * @param persistence the persistence to set
	 */
	public void setPersistence(int persistence) {
		this.persistence = persistence;
	}
	/**
	 * @return the packaging
	 */
	public int getPackaging() {
		return packaging;
	}
	/**
	 * @param packaging the packaging to set
	 */
	public void setPackaging(int packaging) {
		this.packaging = packaging;
	}
	/**
	 * @return the safety
	 */
	public int getSafety() {
		return safety;
	}
	/**
	 * @param safety the safety to set
	 */
	public void setSafety(int safety) {
		this.safety = safety;
	}
	/**
	 * @return the minimumBaseCost
	 */
	public long getMinimumBaseCost() {
		return minimumBaseCost;
	}
	/**
	 * @param minimumBaseCost the minimumBaseCost to set
	 */
	public void setMinimumBaseCost(long minimumBaseCost) {
		this.minimumBaseCost = minimumBaseCost;
	}
	/**
	 * @return the requestedBaseCost
	 */
	public long getRequestedBaseCost() {
		return requestedBaseCost;
	}
	/**
	 * @param requestedBaseCost the requestedBaseCost to set
	 */
	public void setRequestedBaseCost(long requestedBaseCost) {
		this.requestedBaseCost = requestedBaseCost;
	}
	
	/**
	 * @return the requiredBudgetAtMinBC
	 */
	public long getRequiredBudgetAtMinBC() {
		return requiredBudgetAtMinBC;
	}
	/**
	 * @param requiredBudgetAtMinBC the requiredBudgetAtMinBC to set
	 */
	public void setRequiredBudgetAtMinBC(long requiredBudgetAtMinBC) {
		this.requiredBudgetAtMinBC = requiredBudgetAtMinBC;
	}
	/**
	 * @return the requiredBudgetAtReqBC
	 */
	public long getRequiredBudgetAtReqBC() {
		return requiredBudgetAtReqBC;
	}
	/**
	 * @param requiredBudgetAtReqBC the requiredBudgetAtReqBC to set
	 */
	public void setRequiredBudgetAtReqBC(long requiredBudgetAtReqBC) {
		this.requiredBudgetAtReqBC = requiredBudgetAtReqBC;
	}
	/**
	 * @return the allocatedBudget
	 */
	public long getAllocatedBudget() {
		return allocatedBudget;
	}
	/**
	 * @param allocatedBudget the allocatedBudget to set
	 */
	public void setAllocatedBudget(long allocatedBudget) {
		this.allocatedBudget = allocatedBudget;
	}
	/**
	 * @return the currentPeriod
	 */
	public int getCurrentPeriod() {
		return currentPeriod;
	}
	/**
	 * @param currentPeriod the currentPeriod to set
	 */
	public void setCurrentPeriod(int currentPeriod) {
		this.currentPeriod = currentPeriod;
	}
	/**
	 * @return the budgetDeficit
	 */
	public long getBudgetDeficit() {
		return budgetDeficit;
	}
	/**
	 * @param budgetDeficit the budgetDeficit to set
	 */
	public void setBudgetDeficit(long budgetDeficit) {
		this.budgetDeficit = budgetDeficit;
	}
	/**
	 * @return the isAvailable
	 */
	public String getIsAvailable() {
		return isAvailable;
	}
	/**
	 * @param isAvailable the isAvailable to set
	 */
	public void setIsAvailable(String isAvailable) {
		this.isAvailable = isAvailable;
	}
	/**
	 * @return the projectFinishPeriod
	 */
	public int getProjectFinishPeriod() {
		return projectFinishPeriod;
	}
	/**
	 * @param projectFinishPeriod the projectFinishPeriod to set
	 */
	public void setProjectFinishPeriod(int projectFinishPeriod) {
		this.projectFinishPeriod = projectFinishPeriod;
	}
	/**
	 * @return the brands
	 */
	public Set getBrands() {
		return brands;
	}
	/**
	 * @param brands the brands to set
	 */
	public void setBrands(Set brands) {
		this.brands = brands;
	}
	/**
	 * @return the team
	 */
	public Team getTeam() {
		return team;
	}
	/**
	 * @param team the team to set
	 */
	public void setTeam(Team team) {
		this.team = team;
	}
	
	
	
}