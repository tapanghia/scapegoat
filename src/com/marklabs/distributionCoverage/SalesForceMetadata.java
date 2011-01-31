package com.marklabs.distributionCoverage;

public class SalesForceMetadata {

	private long id;
	private String brandName;
	private double supermarket_sf;
	private double generalStore_sf;
	private double kiranaStore_sf;

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
	 * @return the brandName
	 */
	public String getBrandName() {
		return brandName;
	}

	/**
	 * @param brandName
	 *            the brandName to set
	 */
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	/**
	 * @return the supermarket_sf
	 */
	public double getSupermarket_sf() {
		return supermarket_sf;
	}

	/**
	 * @param supermarketSf
	 *            the supermarket_sf to set
	 */
	public void setSupermarket_sf(double supermarketSf) {
		supermarket_sf = supermarketSf;
	}

	/**
	 * @return the generalStore_sf
	 */
	public double getGeneralStore_sf() {
		return generalStore_sf;
	}

	/**
	 * @param generalStoreSf
	 *            the generalStore_sf to set
	 */
	public void setGeneralStore_sf(double generalStoreSf) {
		generalStore_sf = generalStoreSf;
	}

	/**
	 * @return the kiranaStore_sf
	 */
	public double getKiranaStore_sf() {
		return kiranaStore_sf;
	}

	/**
	 * @param kiranaStoreSf
	 *            the kiranaStore_sf to set
	 */
	public void setKiranaStore_sf(double kiranaStoreSf) {
		kiranaStore_sf = kiranaStoreSf;
	}

}
