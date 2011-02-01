package com.marklabs.web.controllers;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JExcelApiExporter;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.export.JRPdfExporterParameter;
import net.sf.jasperreports.engine.export.JRXlsExporterParameter;
import net.sf.jasperreports.j2ee.servlets.BaseHttpServlet;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.marklabs.marketResearchStudies.IMarketResearchStudiesService;
import com.marklabs.teams.Team;
import com.marklabs.web.ActionKeys;

@SuppressWarnings("deprecation")
public class ReportsViewerController extends AbstractController{

	private DataSource dataSource;
	private IMarketResearchStudiesService marketResearchStudiesService;
	
	
	
	public IMarketResearchStudiesService getMarketResearchStudiesService() {
		return marketResearchStudiesService;
	}

	public void setMarketResearchStudiesService(
			IMarketResearchStudiesService marketResearchStudiesService) {
		this.marketResearchStudiesService = marketResearchStudiesService;
	}

	/**
	 * @return the dataSource
	 */
	public DataSource getDataSource() {
		return dataSource;
	}

	/**
	 * @param dataSource the dataSource to set
	 */
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}



	@SuppressWarnings("unchecked")
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		ModelAndView mav = new ModelAndView("reportsViewer");
		
		final HttpSession session = request.getSession();
		final String action = (String) request.getParameter("action");
	
		/**
		 *  Check if the logged in Team has the privileges to view the selected Report,
		 *  	Create a boolean variable. And Set this variable for the report availabilty to the
		 *  	logged in Team.
		 *  	Use this boolean variable before showing the report to the User.
		 */
		final Team loggedInTeam = (Team) session.getAttribute(Constants.TEAM_OBJECT);
	    final int currentPeriod = (Integer)session.getAttribute(Constants.CURRENT_PERIOD);
		
		String reportName = 
			request.getParameter("reportName") != null && 
			!("".equals(request.getParameter("reportName")))?
					request.getParameter("reportName"):(String)session.getAttribute(Constants.REPORT_NAME);
		
		if (request.getParameter("reportName") != null && !("".equals(request.getParameter("reportName"))))
			session.setAttribute(Constants.REPORT_NAME, request.getParameter("reportName"));
		
		int reportRunPeriod = request.getParameter("period") != null && 
			!("".equals(request.getParameter("period")))?Integer.parseInt(request.getParameter("reportName")):currentPeriod - 1;
		
		boolean isReportAccessible = marketResearchStudiesService.getReportAccessForTeamAndPeriod(loggedInTeam, reportRunPeriod, reportName);
		
		
		if ((ActionKeys.EXPORT_XLS.equals(action)
				|| ActionKeys.EXPORT_PDF.equals(action)) && isReportAccessible) {
			
			JasperPrint jasperPrint = null;
			if ((JasperPrint) session
					.getAttribute(BaseHttpServlet.DEFAULT_JASPER_PRINT_SESSION_ATTRIBUTE) != null) {
				jasperPrint = (JasperPrint) session
					.getAttribute(BaseHttpServlet.DEFAULT_JASPER_PRINT_SESSION_ATTRIBUTE);
			
				if (ActionKeys.EXPORT_XLS.equals(action)) {
					response.setContentType("application/xls");
					final String downloadFileName = reportName + ".xls";
					response.setHeader("content-disposition", "attachment; name=\""
							+ downloadFileName + "\"; filename=\""
							+ downloadFileName + "\"");

					final ByteArrayOutputStream byteStream = new ByteArrayOutputStream();
					final JExcelApiExporter xlsExporter = new JExcelApiExporter();
					xlsExporter.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);
					xlsExporter.setParameter(JRXlsExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE);
					xlsExporter.setParameter(
							JRXlsExporterParameter.JASPER_PRINT, jasperPrint);
					xlsExporter.setParameter(
							JRXlsExporterParameter.OUTPUT_STREAM, byteStream);

					xlsExporter.exportReport();
					response.setContentLength(byteStream.toByteArray().length);
					response.getOutputStream().write(byteStream.toByteArray());
					return null; 
				} else if (ActionKeys.EXPORT_PDF.equals(action)) {
					response.setContentType("application/pdf");
					final String downloadFileName = reportName + ".pdf";
					response.setHeader("content-disposition", "attachment; name=\""
							+ downloadFileName + "\"; filename=\""
							+ downloadFileName + "\"");

					final ByteArrayOutputStream byteStream = new ByteArrayOutputStream();
					JRPdfExporter pdfExporter = new JRPdfExporter();
					pdfExporter.setParameter(
							JRPdfExporterParameter.JASPER_PRINT, jasperPrint);
					pdfExporter.setParameter(
							JRPdfExporterParameter.OUTPUT_STREAM, byteStream);

					pdfExporter.exportReport();
					response.setContentLength(byteStream.toByteArray().length);
					response.getOutputStream().write(byteStream.toByteArray());
					return null; 
				}
			}
			return mav;
		} else {
			
			if (reportName != null && !("").equalsIgnoreCase(reportName) && isReportAccessible){
				
				String reportPath = returnReportPath(request, reportName);
				
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
				Connection conn = null;
				JasperPrint jasperPrint = null;
				Map paramMap = new HashMap();

				for (Enumeration paramNames = request.getParameterNames(); paramNames
					.hasMoreElements();) {
					final String paramName = paramNames.nextElement().toString();
					if (request.getParameter(paramName) != null) {
						paramMap.put(paramName, request.getParameter(paramName));
					}
				}
		
				try {
					conn = dataSource.getConnection();
					jasperPrint = JasperFillManager.fillReport(jasperReport,
							paramMap, conn);
					}
					catch (Exception e) {
						// TODO: handle exception
						System.out.println("Exception Details: " + e.getMessage());
						e.printStackTrace();
					}
					finally {
						conn.close();
					}
				
				session.setAttribute(
						BaseHttpServlet.DEFAULT_JASPER_PRINT_SESSION_ATTRIBUTE,
						jasperPrint);
			}
			else {
				// Removing Jasper print object from session
				if (session.getAttribute(BaseHttpServlet.DEFAULT_JASPER_PRINT_SESSION_ATTRIBUTE) != null)
					session.removeAttribute(BaseHttpServlet.DEFAULT_JASPER_PRINT_SESSION_ATTRIBUTE);
			}
			return mav;
		}
		
		
		
		

	}

	/**
	 * 
	 * @param HttpServletRequest req
	 * @param reportName
	 * @return reportPath
	 */
	public String returnReportPath(HttpServletRequest req, String reportName) {
		String reportPath = req.getSession().getServletContext().getRealPath("reports") + System.getProperty("file.separator") + reportName +".jasper";
		return reportPath;
	}
	
	
}
