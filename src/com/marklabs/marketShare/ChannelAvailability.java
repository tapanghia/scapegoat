package com.marklabs.marketShare;

import com.marklabs.brands.Brand;

public class ChannelAvailability {

	private long id;
	private Brand brand;
	private double supermarketAvailability;
	private double generalStoreAvailability;
	private double kiranaStoreAvailability;

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
	 * @return the supermarketAvailability
	 */
	public double getSupermarketAvailability() {
		return supermarketAvailability;
	}

	/**
	 * @param supermarketAvailability
	 *            the supermarketAvailability to set
	 */
	public void setSupermarketAvailability(double supermarketAvailability) {
		this.supermarketAvailability = supermarketAvailability;
	}

	/**
	 * @return the generalStoreAvailability
	 */
	public double getGeneralStoreAvailability() {
		return generalStoreAvailability;
	}

	/**
	 * @param generalStoreAvailability
	 *            the generalStoreAvailability to set
	 */
	public void setGeneralStoreAvailability(double generalStoreAvailability) {
		this.generalStoreAvailability = generalStoreAvailability;
	}

	/**
	 * @return the kiranaStoreAvailability
	 */
	public double getKiranaStoreAvailability() {
		return kiranaStoreAvailability;
	}

	/**
	 * @param kiranaStoreAvailability
	 *            the kiranaStoreAvailability to set
	 */
	public void setKiranaStoreAvailability(double kiranaStoreAvailability) {
		this.kiranaStoreAvailability = kiranaStoreAvailability;
	}

}
