package com.marklabs.distributionCoverage;

import com.marklabs.brands.Brand;

public class SalesForcePercentage {

	private Brand brand;
	private long superMarketPercentage;
	private long genStorePercentage;
	private long kiranaStorePercentage;

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public long getSuperMarketPercentage() {
		return superMarketPercentage;
	}

	public void setSuperMarketPercentage(long superMarketPercentage) {
		this.superMarketPercentage = superMarketPercentage;
	}

	public long getGenStorePercentage() {
		return genStorePercentage;
	}

	public void setGenStorePercentage(long genStorePercentage) {
		this.genStorePercentage = genStorePercentage;
	}

	public long getKiranaStorePercentage() {
		return kiranaStorePercentage;
	}

	public void setKiranaStorePercentage(long kiranaStorePercentage) {
		this.kiranaStorePercentage = kiranaStorePercentage;
	}

}
