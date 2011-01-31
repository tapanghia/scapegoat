package com.marklabs.brands;

import com.marklabs.researchProject.ResearchProject;

/**
 * @date 04/25/2010
 * @author Tapan
 *
 */
@SuppressWarnings("serial")
public class Brand implements java.io.Serializable {

	private long id;
	private String brandName;
	/*
	 * New: Brand added in the same period
	 * Maintained: Brand added in any of the previous periods and no changes done
	 * Modified: Brand added in any of the previous periods and changes done on the pre existing brand features
	 * Cost Improved: Brand added in any of the previous periods, no changes done, but cost improved
	 */
	private String status;
	private String deleteFlag;
	private ResearchProject researchProject;
	int period;
	
	/**
	 * @return the period
	 */
	public int getPeriod() {
		return period;
	}
	/**
	 * @param period the period to set
	 */
	public void setPeriod(int period) {
		this.period = period;
	}
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
	 * @return the brandName
	 */
	public String getBrandName() {
		return brandName;
	}
	/**
	 * @param brandName the brandName to set
	 */
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	/**
	 * @return the deleteFlag
	 */
	public String getDeleteFlag() {
		return deleteFlag;
	}
	/**
	 * @param deleteFlag the deleteFlag to set
	 */
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	/**
	 * @return the researchProject
	 */
	public ResearchProject getResearchProject() {
		return researchProject;
	}
	/**
	 * @param researchProject the researchProject to set
	 */
	public void setResearchProject(ResearchProject researchProject) {
		this.researchProject = researchProject;
	}
	
	public boolean equals(Object obj) {
		
		if (this == obj)
			return true;
		
		if (!(obj instanceof Brand))
			return false;
		
		Brand brand = (Brand)obj;
		return id == brand.getId() && brandName.equals(brand.getBrandName());
		
	}
	
	
	
	public int hashCode() {
		return  (int)id;
	}
	
	
}
