package com.marklabs.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.marklabs.web.controllers.Constants;

public class SessionExpirationFilter implements Filter {

    static Logger logger = Logger.getLogger(SessionExpirationFilter.class);
    private static String errorPage = null;
    private static String excludePages = null;

    public void destroy() {
        logger.debug("SessionExpirationFilter destroyed");
    }

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        HttpSession session = httpServletRequest.getSession();
        String servletPath = httpServletRequest.getServletPath();
        //TODO : Implement regular expression mapping instead of indexOf
        if (excludePages.indexOf(servletPath) == -1
                && (session == null || session.getAttribute(Constants.TEAM_ID) == null)) {
            httpServletResponse.sendRedirect(errorPage);
        } else {
            filterChain.doFilter(request, response);
        }
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        errorPage = filterConfig.getInitParameter("errorPage");
        excludePages = (filterConfig.getInitParameter("excludePages") != null ? filterConfig
                .getInitParameter("excludePages") : "");
        logger.debug("SessionExpirationFilter initialized with errorPage = "
                + errorPage + " and following pages will be excluded : "
                + excludePages);
    }

}
