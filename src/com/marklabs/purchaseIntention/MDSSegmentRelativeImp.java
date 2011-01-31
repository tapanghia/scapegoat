package com.marklabs.purchaseIntention;

public class MDSSegmentRelativeImp {

	private long id;
	private String segment;
	private int period;
	private double economyValue;
	private double qualityValue;
	private double appealValue;

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
	 * @return the segment
	 */
	public String getSegment() {
		return segment;
	}

	/**
	 * @param segment
	 *            the segment to set
	 */
	public void setSegment(String segment) {
		this.segment = segment;
	}

	/**
	 * @return the period
	 */
	public int getPeriod() {
		return period;
	}

	/**
	 * @param period
	 *            the period to set
	 */
	public void setPeriod(int period) {
		this.period = period;
	}

	/**
	 * @return the economyValue
	 */
	public double getEconomyValue() {
		return economyValue;
	}

	/**
	 * @param economyValue
	 *            the economyValue to set
	 */
	public void setEconomyValue(double economyValue) {
		this.economyValue = economyValue;
	}

	/**
	 * @return the qualityValue
	 */
	public double getQualityValue() {
		return qualityValue;
	}

	/**
	 * @param qualityValue
	 *            the qualityValue to set
	 */
	public void setQualityValue(double qualityValue) {
		this.qualityValue = qualityValue;
	}

	/**
	 * @return the appealValue
	 */
	public double getAppealValue() {
		return appealValue;
	}

	/**
	 * @param appealValue
	 *            the appealValue to set
	 */
	public void setAppealValue(double appealValue) {
		this.appealValue = appealValue;
	}

}
