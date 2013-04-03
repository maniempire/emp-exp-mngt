package com.pid.util;

import java.sql.Connection;
import java.util.HashMap;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;



public class PDFReport {
	
	JasperDesign jasperDesign;
	JasperReport jasperReport;
	JasperPrint jasperPrint;
	
	public boolean getPDFReports(Connection conn, String userId){	
		boolean result = false;
		HashMap jasperParameter = new HashMap();
		jasperParameter.put("userId", userId);
		try{
		jasperReport = JasperCompileManager.compileReport("D:\\report.jrxml");
		jasperPrint = JasperFillManager.fillReport(jasperReport, jasperParameter, conn);
		JasperExportManager.exportReportToPdfFile(jasperPrint, "D:\\report_3.pdf");
		result = true;
		}catch(JRException e){
		e.printStackTrace();
		}
		
		return result;
	}
}
