package com.marklabs.user;

/**
 * @date 04/29/2010
 * @author Tapan
 *
 */
public class User implements java.io.Serializable {
	
	/**
	 * userTypeId = 1 (admin)
	 * userTypeId = 2 (Other users)
	 */
	
	private long userId;
	private String userName;
	private String password;
	private int userTypeId;
	
	/**
	 * @return the userId
	 */
	public long getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(long userId) {
		this.userId = userId;
	}
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the userTypeId
	 */
	public int getUserTypeId() {
		return userTypeId;
	}
	/**
	 * @param userTypeId the userTypeId to set
	 */
	public void setUserTypeId(int userTypeId) {
		this.userTypeId = userTypeId;
	}
	
	
	
}