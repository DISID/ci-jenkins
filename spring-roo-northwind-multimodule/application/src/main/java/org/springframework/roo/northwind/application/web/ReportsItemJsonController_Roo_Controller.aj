// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import org.springframework.roo.northwind.application.web.ReportsItemJsonController;
import org.springframework.roo.northwind.service.api.ReportService;

privileged aspect ReportsItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ReportService ReportsItemJsonController.reportService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ReportService
     */
    public ReportService ReportsItemJsonController.getReportService() {
        return reportService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param reportService
     */
    public void ReportsItemJsonController.setReportService(ReportService reportService) {
        this.reportService = reportService;
    }
    
}
