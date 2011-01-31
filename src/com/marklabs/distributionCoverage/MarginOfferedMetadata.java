package com.marklabs.distributionCoverage;


public class MarginOfferedMetadata {

	private long id;
	private String brandName;
	private double supermarket_mo;
	private double generalStore_mo;
	private double kiranaStore_mo;

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
	 * @return the supermarket_mo
	 */
	public double getSupermarket_mo() {
		return supermarket_mo;
	}

	/**
	 * @param supermarketMo
	 *            the supermarket_mo to set
	 */
	public void setSupermarket_mo(double supermarketMo) {
		supermarket_mo = supermarketMo;
	}

	/**
	 * @return the generalStore_mo
	 */
	public double getGeneralStore_mo() {
		return generalStore_mo;
	}

	/**
	 * @param generalStoreMo
	 *            the generalStore_mo to set
	 */
	public void setGeneralStore_mo(double generalStoreMo) {
		generalStore_mo = generalStoreMo;
	}

	/**
	 * @return the kiranaStore_mo
	 */
	public double getKiranaStore_mo() {
		return kiranaStore_mo;
	}

	/**
	 * @param kiranaStoreMo
	 *            the kiranaStore_mo to set
	 */
	public void setKiranaStore_mo(double kiranaStoreMo) {
		kiranaStore_mo = kiranaStoreMo;
	}

}
