package com.marklabs.teams;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

public class TeamMetadataService extends HibernateDaoSupport implements ITeamMetadataService {

	public String[] getTeamNamesFromMetadata() {
		String queryString = "from TeamMetadata order by teamName";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (String[]) result.toArray(new String[result.size()]);
		
		return null;
	}

	
	
}
