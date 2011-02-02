package com.marklabs.distributionCoverage;

import com.marklabs.brands.Brand;

public class MarginOffered {

	private long id;
	private Brand brand;
	private long supermarket_mo;
	private long generalStore_mo;
	private long kiranaStore_mo;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
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
