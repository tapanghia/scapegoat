package com.marklabs.web.filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.marklabs.utils.DBUtil;
import com.marklabs.utils.DataAccessException;
import com.marklabs.web.controllers.Constants;

public class TransitionInitializeLogoutFilter implements Filter {

	 private static String errorPage = null;
	 private static String excludePages = null;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		
		boolean hasTeamTransitionStarted = false;
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        HttpSession session = httpServletRequest.getSession();
        
        // Now using DBUtil to make a call to database and see if the transition has been initialized. 
        //	If yes throw the user out by setting the teamTransitionFlag
        
        if ((session != null && session.getAttribute(Constants.TEAM_ID) != null && 
        		!("".equalsIgnoreCase((String)session.getAttribute(Constants.TEAM_ID))))) {
        	        
	        Connection connection = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        String query ="select is_transitioning from teams where id = '" + ((String)session.getAttribute(Constants.TEAM_ID)) + "'";
	        
	        try {
	            connection = DBUtil.getInstance().createConnection();
	
	            pstmt = connection.prepareStatement(query);
	            rs = pstmt.executeQuery(query);
	            
	            // only if any result is returned, the transition flag will be set to yes
	            if (rs.next()) {
	            	 if (rs.getString(1) != null && !("".equalsIgnoreCase(rs.getString(1))) && ("y".equalsIgnoreCase(rs.getString(1)))) {
		                  	hasTeamTransitionStarted = true;
		            }
	            }
	            pstmt.close();
	   
	        } catch (SQLException e) {
	        	e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
	            
	        } catch (Exception e) {
	            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
	        } 
	        finally {
	            try {
	                DBUtil.getInstance().closeDBResources(connection, pstmt,rs);
	            } catch (DataAccessException e) {
	                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
	            }
	        }
	        
        }
       System.out.println("After all sql execution: value of flag: " + hasTeamTransitionStarted);
        
        if (hasTeamTransitionStarted) {
        	if(session != null) session.invalidate();
        	httpServletResponse.sendRedirect(errorPage);
        } else {
        	filterChain.doFilter(request, response);
        }
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		  errorPage = filterConfig.getInitParameter("errorPage");
	
	}

	
	
	
}
