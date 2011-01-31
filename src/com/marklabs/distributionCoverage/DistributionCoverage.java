package com.marklabs.distributionCoverage;

import com.marklabs.brands.Brand;

public class DistributionCoverage {

	private long id;
	private Brand brand;
	private double supermarket_dc;
	private double generalStore_dc;
	private double kiranaStore_dc;

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the brand
	 */
	public Brand getBrand() {
		return brand;
	}

	/**
	 * @param brand
	 *            the brand to set
	 */
	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	/**
	 * @return the supermarket_dc
	 */
	public double getSupermarket_dc() {
		return supermarket_dc;
	}

	/**
	 * @param supermarketDc
	 *            the supermarket_dc to set
	 */
	public void setSupermarket_dc(double supermarketDc) {
		supermarket_dc = supermarketDc;
	}

	/**
	 * @return the generalStore_dc
	 */
	public double getGeneralStore_dc() {
		return generalStore_dc;
	}

	/**
	 * @param generalStoreDc
	 *            the generalStore_dc to set
	 */
	public void setGeneralStore_dc(double generalStoreDc) {
		generalStore_dc = generalStoreDc;
	}

	/**
	 * @return the kiranaStore_dc
	 */
	public double getKiranaStore_dc() {
		return kiranaStore_dc;
	}

	/**
	 * @param kiranaStoreDc
	 *            the kiranaStore_dc to set
	 */
	public void setKiranaStore_dc(double kiranaStoreDc) {
		kiranaStore_dc = kiranaStoreDc;
	}

}
