package com.marklabs.marketShare;

import com.marklabs.brands.Brand;

public class ChannelMarketShare {

	private long id;
	private Brand brand;
	private double supermarket_cms;
	private double generalStore_cms;
	private double kiranaStore_cms;
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
	 * @return the supermarket_cms
	 */
	public double getSupermarket_cms() {
		return supermarket_cms;
	}
	/**
	 * @param supermarketCms the supermarket_cms to set
	 */
	public void setSupermarket_cms(double supermarketCms) {
		supermarket_cms = supermarketCms;
	}
	/**
	 * @return the generalStore_cms
	 */
	public double getGeneralStore_cms() {
		return generalStore_cms;
	}
	/**
	 * @param generalStoreCms the generalStore_cms to set
	 */
	public void setGeneralStore_cms(double generalStoreCms) {
		generalStore_cms = generalStoreCms;
	}
	/**
	 * @return the kiranaStore_cms
	 */
	public double getKiranaStore_cms() {
		return kiranaStore_cms;
	}
	/**
	 * @param kiranaStoreCms the kiranaStore_cms to set
	 */
	public void setKiranaStore_cms(double kiranaStoreCms) {
		kiranaStore_cms = kiranaStoreCms;
	}

	
}
