package com.marklabs.purchaseIntention;

import com.marklabs.brands.Brand;

/**
 * This is Brand Purchase Intention.
 * @author Tapan
 *
 */
public class PurchaseIntention {

	private long id;
	private Brand brand;
	private double bluebloods_pi;
	private double raffles_pi;
	private double wannabes_pi;
	private double strugglers_pi;
	private double deprived_pi;

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
	 * @return the bluebloods_pi
	 */
	public double getBluebloods_pi() {
		return bluebloods_pi;
	}

	/**
	 * @param bluebloodsPi
	 *            the bluebloods_pi to set
	 */
	public void setBluebloods_pi(double bluebloodsPi) {
		bluebloods_pi = bluebloodsPi;
	}

	/**
	 * @return the raffles_pi
	 */
	public double getRaffles_pi() {
		return raffles_pi;
	}

	/**
	 * @param rafflesPi
	 *            the raffles_pi to set
	 */
	public void setRaffles_pi(double rafflesPi) {
		raffles_pi = rafflesPi;
	}

	/**
	 * @return the wannabes_pi
	 */
	public double getWannabes_pi() {
		return wannabes_pi;
	}

	/**
	 * @param wannabesPi
	 *            the wannabes_pi to set
	 */
	public void setWannabes_pi(double wannabesPi) {
		wannabes_pi = wannabesPi;
	}

	/**
	 * @return the strugglers_pi
	 */
	public double getStrugglers_pi() {
		return strugglers_pi;
	}

	/**
	 * @param strugglersPi
	 *            the strugglers_pi to set
	 */
	public void setStrugglers_pi(double strugglersPi) {
		strugglers_pi = strugglersPi;
	}

	/**
	 * @return the deprived_pi
	 */
	public double getDeprived_pi() {
		return deprived_pi;
	}

	/**
	 * @param deprivedPi
	 *            the deprived_pi to set
	 */
	public void setDeprived_pi(double deprivedPi) {
		deprived_pi = deprivedPi;
	}

}
