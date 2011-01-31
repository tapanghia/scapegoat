package com.marklabs.distributionCoverage;

import com.marklabs.brands.Brand;

public class IMarginEffort {

	private long id;
	private Brand brand;
	private double superMarkets_me;
	private double generalStores_me;
	private double kiranaStores_me;
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
	 * @return the brand
	 */
	public Brand getBrand() {
		return brand;
	}
	/**
	 * @param brand the brand to set
	 */
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	/**
	 * @return the superMarkets_me
	 */
	public double getSuperMarkets_me() {
		return superMarkets_me;
	}
	/**
	 * @param superMarketsMe the superMarkets_me to set
	 */
	public void setSuperMarkets_me(double superMarketsMe) {
		superMarkets_me = superMarketsMe;
	}
	/**
	 * @return the generalStores_me
	 */
	public double getGeneralStores_me() {
		return generalStores_me;
	}
	/**
	 * @param generalStoresMe the generalStores_me to set
	 */
	public void setGeneralStores_me(double generalStoresMe) {
		generalStores_me = generalStoresMe;
	}
	/**
	 * @return the kiranaStores_me
	 */
	public double getKiranaStores_me() {
		return kiranaStores_me;
	}
	/**
	 * @param kiranaStoresMe the kiranaStores_me to set
	 */
	public void setKiranaStores_me(double kiranaStoresMe) {
		kiranaStores_me = kiranaStoresMe;
	}
	
	
}
