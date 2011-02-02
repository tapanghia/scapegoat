package com.marklabs.distributionCoverage;

public class MarginOfferedMetadata {

	private long id;
	private String brandName;
	private long supermarket_mo;
	private long generalStore_mo;
	private long kiranaStore_mo;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public long getSupermarket_mo() {
		return supermarket_mo;
	}

	public void setSupermarket_mo(long supermarketMo) {
		supermarket_mo = supermarketMo;
	}

	public long getGeneralStore_mo() {
		return generalStore_mo;
	}

	public void setGeneralStore_mo(long generalStoreMo) {
		generalStore_mo = generalStoreMo;
	}

	public long getKiranaStore_mo() {
		return kiranaStore_mo;
	}

	public void setKiranaStore_mo(long kiranaStoreMo) {
		kiranaStore_mo = kiranaStoreMo;
	}

}
