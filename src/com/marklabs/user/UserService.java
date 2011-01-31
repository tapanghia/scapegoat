package com.marklabs.user;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

public class UserService extends HibernateDaoSupport implements IUserService {
		
	public boolean isUserAuthenticated(String userName, String password) {
		String queryString = "from User where userName='"+userName+"' and password='"+password+"'";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return true;
		return false;
	}

	public User getUserDetails(String userName, String password) {
		String queryString = "from User where userName='"+userName+"' and password='"+password+"'";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (User)result.get(0);
		return null;
	}


}