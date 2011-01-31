package com.marklabs.marketShare;

import com.marklabs.brands.Brand;

public class ChannelAllocation {

	private long id;
	private Brand brand;
	private double supermarketAllocation;
	private double generalStoreAllocation;
	private double kiranaStoreAllocation;

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
	 * @return the supermarketAllocation
	 */
	public double getSupermarketAllocation() {
		return supermarketAllocation;
	}

	/**
	 * @param supermarketAllocation
	 *            the supermarketAllocation to set
	 */
	public void setSupermarketAllocation(double supermarketAllocation) {
		this.supermarketAllocation = supermarketAllocation;
	}

	/**
	 * @return the generalStoreAllocation
	 */
	public double getGeneralStoreAllocation() {
		return generalStoreAllocation;
	}

	/**
	 * @param generalStoreAllocation
	 *            the generalStoreAllocation to set
	 */
	public void setGeneralStoreAllocation(double generalStoreAllocation) {
		this.generalStoreAllocation = generalStoreAllocation;
	}

	/**
	 * @return the kiranaStoreAllocation
	 */
	public double getKiranaStoreAllocation() {
		return kiranaStoreAllocation;
	}

	/**
	 * @param kiranaStoreAllocation
	 *            the kiranaStoreAllocation to set
	 */
	public void setKiranaStoreAllocation(double kiranaStoreAllocation) {
		this.kiranaStoreAllocation = kiranaStoreAllocation;
	}

}
