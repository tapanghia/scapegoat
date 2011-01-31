package com.marklabs.brandSpecifications;

import com.marklabs.brands.Brand;

public class BrandSpecsMetadata {
	
	private long id;
	private String brandName;
	private long productionLevel;
	private long inventorySold;
	private long currentInventory;
	private long retailPrice;
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
	 * @return the productionLevel
	 */
	public long getProductionLevel() {
		return productionLevel;
	}
	/**
	 * @param productionLevel the productionLevel to set
	 */
	public void setProductionLevel(long productionLevel) {
		this.productionLevel = productionLevel;
	}
	/**
	 * @return the inventorySold
	 */
	public long getInventorySold() {
		return inventorySold;
	}
	/**
	 * @param inventorySold the inventorySold to set
	 */
	public void setInventorySold(long inventorySold) {
		this.inventorySold = inventorySold;
	}
	/**
	 * @return the currentInventory
	 */
	public long getCurrentInventory() {
		return currentInventory;
	}
	/**
	 * @param currentInventory the currentInventory to set
	 */
	public void setCurrentInventory(long currentInventory) {
		this.currentInventory = currentInventory;
	}
	/**
	 * @return the retailPrice
	 */
	public long getRetailPrice() {
		return retailPrice;
	}
	/**
	 * @param retailPrice the retailPrice to set
	 */
	public void setRetailPrice(long retailPrice) {
		this.retailPrice = retailPrice;
	}
	
}
