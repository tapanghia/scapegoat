package com.marklabs.web.controllers;


import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JasperManager;
import net.sf.jasperreports.engine.JasperReport;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.marklabs.reports.IReportService;



@SuppressWarnings("deprecation")
public class ReportsController extends AbstractController {

	IReportService reportsService;
	
	/**
	 * @return the reportsService
	 */
	public IReportService getReportsService() {
		return reportsService;
	}

	/**
	 * @param reportsService the reportsService to set
	 */
	public void setReportsService(IReportService reportsService) {
		this.reportsService = reportsService;
	}

	
	private String getReportPath(HttpServletRequest request, String reportName){
		String reportPath = request.getSession().getServletContext().getRealPath("reports") + System.getProperty("file.separator") + reportName +".jasper";
		System.out.println("reportPath: "+reportPath);
		return reportPath;
	}
	
	/**
	 * 
	 * @param jasperReport
	 * @return reportParameterList, an arraylist containing all the parameters for the execution of the report.
	 */
	@SuppressWarnings("unchecked")
	private ArrayList getReportParamList(JasperReport jasperReport) {
		if (jasperReport != null) {
			ArrayList reportParametersList = new ArrayList();
			JRParameter[] reportParametersName = jasperReport.getParameters();
			if (reportParametersName != null && reportParametersName.length > 0) {
				for (int i = 0; i < reportParametersName.length; i++) {
				    if( !reportParametersName[i].isSystemDefined() ){
						String parameterName = reportParametersName[i].getName();
						if (!reportParametersList.contains(parameterName)){
							reportParametersList.add(parameterName);
						}
				    }
				}
			}
			return reportParametersList;
		}
		return null;
	}
	

	@SuppressWarnings({ "unchecked", "deprecation" })
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		HttpSession session = request.getSession(true);
		
		String currentLink = null;
		ModelAndView mav = null;
		if (null !=  session.getAttribute("CURRENT_LINK")){
		  currentLink = (String)session.getAttribute("CURRENT_LINK");
		}
		if (null != currentLink && currentLink.equalsIgnoreCase(Constants.HOME_LINK)) {
			mav = new ModelAndView("TeamHomeReports");
		}
		if (null != currentLink && currentLink.equalsIgnoreCase(Constants.RESEARCH_PROJECT_LINK)) {
			mav = new ModelAndView("RnDReports");
		}
		else if (null != currentLink && currentLink.equalsIgnoreCase(Constants.MARKETTING_LINK)) {
			mav = new ModelAndView("MarketingReports");
		}
		else if (null != currentLink && currentLink.equalsIgnoreCase(Constants.SALES_LINK)) {
			mav = new ModelAndView("SalesReports");
		}
		else if (null != currentLink && currentLink.equalsIgnoreCase(Constants.INTELLIGENCE_LINK)) {
			mav = new ModelAndView("IntelligenceReports");
		}
		else if (null != currentLink && currentLink.equalsIgnoreCase(Constants.BOARD_LINK)) {
			mav = new ModelAndView("BoardRoomReports");
		}
		
		final String reportName = request.getParameter("reportName");
	
		if (reportName != null && !("".equals(reportName))) {
			String reportPath = getReportPath(request, reportName);
			
			try {
			//Checking if a file exists at this path reportPathNew
				File file = new File(reportPath);
				if(!(file.exists()))
					throw new FileNotFoundException();
			}catch (FileNotFoundException fException) {
				System.out.println("FileNotFoundException");
				System.out.println(fException);
			}
			
			JasperReport jasperReport = JasperManager.loadReport(reportPath);
			
			// This function will get the parameter list required by the report.
			ArrayList reportParamList = getReportParamList(jasperReport);
			session.setAttribute(Constants.REPORT_PARAMETER_LIST, reportParamList);
		}
		return mav;
	}
}

