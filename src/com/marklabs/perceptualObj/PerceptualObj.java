package com.marklabs.perceptualObj;

import com.marklabs.brands.Brand;

/**
 * 
 * @author Tapan
 *
 */


public class PerceptualObj {

	private int id;
	
	/**
	 * scale can take values from 'Semantic' or 'MDS'
	 */
	private String scale;
	
	/**
	 * dimension can take values from:
	 * For Semantic:
	 * 1. Design
	 * 2. Fragrance
	 * 3. Persistence
	 * 4. Packaging
	 * 5. Safety
	 * 
	 * For MDS:
	 * 1. Economy
	 * 2. Quality
	 * 3. Appeal
	 */
	private String dimension1;
	private double objective1;
	private String dimension2;
	private double objective2;
	private Brand brand;

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getDimension1() {
		return dimension1;
	}
	public void setDimension1(String dimension1) {
		this.dimension1 = dimension1;
	}
	public double getObjective1() {
		return objective1;
	}
	public void setObjective1(double objective1) {
		this.objective1 = objective1;
	}
	public String getDimension2() {
		return dimension2;
	}
	public void setDimension2(String dimension2) {
		this.dimension2 = dimension2;
	}
	public double getObjective2() {
		return objective2;
	}
	public void setObjective2(double objective2) {
		this.objective2 = objective2;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
		
}
