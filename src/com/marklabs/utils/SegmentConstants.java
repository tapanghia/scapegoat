package com.marklabs.utils;

import java.io.Serializable;

/**
 * The <code>SegmentConstants</code> class represents the Segment Constants
 * defined in the SEGMENT_CONSTANTS table. 
 *
 * @author  Tapan
 * @version 1.0, 05/08/2010
 */

public class SegmentConstants implements Serializable {

	private int id;
	private String name;
	private int period;
	private double segBlueBloods;
	private double segRaffles;
	private double segWannabes;
	private double segStrugglers;
	private double segDeprived;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the period
	 */
	public int getPeriod() {
		return period;
	}
	/**
	 * @param period the period to set
	 */
	public void setPeriod(int period) {
		this.period = period;
	}
	/**
	 * @return the segBlueBloods
	 */
	public double getSegBlueBloods() {
		return segBlueBloods;
	}
	/**
	 * @param segBlueBloods the segBlueBloods to set
	 */
	public void setSegBlueBloods(double segBlueBloods) {
		this.segBlueBloods = segBlueBloods;
	}
	/**
	 * @return the segRaffles
	 */
	public double getSegRaffles() {
		return segRaffles;
	}
	/**
	 * @param segRaffles the segRaffles to set
	 */
	public void setSegRaffles(double segRaffles) {
		this.segRaffles = segRaffles;
	}
	/**
	 * @return the segWannabees
	 */
	public double getSegWannabes() {
		return segWannabes;
	}
	/**
	 * @param segWannabees the segWannabees to set
	 */
	public void setSegWannabes(double segWannabes) {
		this.segWannabes = segWannabes;
	}
	/**
	 * @return the segStrugglers
	 */
	public double getSegStrugglers() {
		return segStrugglers;
	}
	/**
	 * @param segStrugglers the segStrugglers to set
	 */
	public void setSegStrugglers(double segStrugglers) {
		this.segStrugglers = segStrugglers;
	}
	/**
	 * @return the segDeprived
	 */
	public double getSegDeprived() {
		return segDeprived;
	}
	/**
	 * @param segDeprived the segDeprived to set
	 */
	public void setSegDeprived(double segDeprived) {
		this.segDeprived = segDeprived;
	}

	
}
