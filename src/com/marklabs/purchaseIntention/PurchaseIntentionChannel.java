package com.marklabs.purchaseIntention;

import com.marklabs.brands.Brand;

/**
 * Channel Purchase Intention
 * 
 * @author Tapan
 * 
 */
public class PurchaseIntentionChannel {

	private long id;
	private Brand brand;
	private double superMarkets_pi;
	private double generalStores_pi;
	private double kiranaStores_pi;

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
	 * @return the superMarkets_pi
	 */
	public double getSuperMarkets_pi() {
		return superMarkets_pi;
	}

	/**
	 * @param superMarketsPi
	 *            the superMarkets_pi to set
	 */
	public void setSuperMarkets_pi(double superMarketsPi) {
		superMarkets_pi = superMarketsPi;
	}

	/**
	 * @return the generalStores_pi
	 */
	public double getGeneralStores_pi() {
		return generalStores_pi;
	}

	/**
	 * @param generalStoresPi
	 *            the generalStores_pi to set
	 */
	public void setGeneralStores_pi(double generalStoresPi) {
		generalStores_pi = generalStoresPi;
	}

	/**
	 * @return the kiranaStores_pi
	 */
	public double getKiranaStores_pi() {
		return kiranaStores_pi;
	}

	/**
	 * @param kiranaStoresPi
	 *            the kiranaStores_pi to set
	 */
	public void setKiranaStores_pi(double kiranaStoresPi) {
		kiranaStores_pi = kiranaStoresPi;
	}

}
