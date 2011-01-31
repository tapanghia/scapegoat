package com.marklabs.teams;


import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

/**
 * @date 04/25/2010
 * @author Tapan
 *
 */
public class TeamService extends HibernateDaoSupport implements ITeamService {
	
	ITeamMetadataService teamMetadataService;
		
	/**
	 * @return the teamMetadataService
	 */
	public ITeamMetadataService getTeamMetadataService() {
		return teamMetadataService;
	}

	/**
	 * @param teamMetadataService the teamMetadataService to set
	 */
	public void setTeamMetadataService(ITeamMetadataService teamMetadataService) {
		this.teamMetadataService = teamMetadataService;
	}

	public boolean isTeamAuthenticated(String teamUserName, String teamPassword) {
		String queryString = "from Team where teamUserName='"+teamUserName+"' and teamPassword='"+teamPassword+"'";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return true;
		return false;
	}

	public Team getTeamDetails(String teamUserName, String teamPassword) {
		String queryString = "from Team where teamUserName='"+teamUserName+"' and teamPassword='"+teamPassword+"'";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (Team)result.get(0);
		return null;
	}

	public void saveTeamDetails(Team team) {
		getHibernateTemplate().save(team);
		
	}
	
	public void deleteTeam(Team team) {
		getHibernateTemplate().delete(team);
	}

	public Team[] getAllTeams() {
		String queryString = "from Team";
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (Team[]) result.toArray(new Team[result.size()]);
		return null;
	}
	
	/**
	 * This function should only be used for configuring teams for the first time.
	 */
	public Team[] configureTeams(long teamCount) {
		String []teamNames = teamMetadataService.getTeamNamesFromMetadata();
		if (teamNames != null && teamNames.length > 0) {
			for (int i=0; i<teamCount; i++) {
				Team team = new Team();
				team.setTeamName(teamNames[i]);
				team.setTeamUserName(teamNames[i]);
				team.setTeamPassword(teamNames[i]);
				team.setCurrentTeamPeriod(0);
				saveTeamDetails(team);
			}
		}
		return null;
	}

	public void updateTeam(Team team) {
		getHibernateTemplate().update(team);
	}
	
	public Team getTeamOnTeamId(long teamId) {
		String queryString = "from Team where id = "+teamId;
		List result = getHibernateTemplate().find(queryString);
		if (result != null && result.size() > 0)
			return (Team) result.get(0);
		return null;
	}
	
}