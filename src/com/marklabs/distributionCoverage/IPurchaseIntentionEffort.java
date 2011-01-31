package com.marklabs.distributionCoverage;

import com.marklabs.brands.Brand;

public class IPurchaseIntentionEffort {

	private long id;
	private Brand brand;
	private double superMarkets_pie;
	private double generalStores_pie;
	private double kiranaStores_pie;
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
	 * @return the superMarkets_pie
	 */
	public double getSuperMarkets_pie() {
		return superMarkets_pie;
	}
	/**
	 * @param superMarketsPie the superMarkets_pie to set
	 */
	public void setSuperMarkets_pie(double superMarketsPie) {
		superMarkets_pie = superMarketsPie;
	}
	/**
	 * @return the generalStores_pie
	 */
	public double getGeneralStores_pie() {
		return generalStores_pie;
	}
	/**
	 * @param generalStoresPie the generalStores_pie to set
	 */
	public void setGeneralStores_pie(double generalStoresPie) {
		generalStores_pie = generalStoresPie;
	}
	/**
	 * @return the kiranaStores_pie
	 */
	public double getKiranaStores_pie() {
		return kiranaStores_pie;
	}
	/**
	 * @param kiranaStoresPie the kiranaStores_pie to set
	 */
	public void setKiranaStores_pie(double kiranaStoresPie) {
		kiranaStores_pie = kiranaStoresPie;
	}
	
	
}
