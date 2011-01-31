package com.marklabs.user;


public interface IUserService {
	
	/**
	 * 
	 * @param userName
	 * @param password
	 * @return true, if the user is authenticated, false if not.
	 */
	public boolean isUserAuthenticated(String userName, String password);
	
	/**
	 * 
	 * @param userName
	 * @param password
	 * @return the logged in user object
	 */
	public User getUserDetails(String userName, String password);
		
	
	
}