// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import org.springframework.roo.northwind.application.web.RegionsCollectionThymeleafController;
import org.springframework.roo.northwind.service.api.RegionService;

privileged aspect RegionsCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RegionService RegionsCollectionThymeleafController.regionService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return RegionService
     */
    public RegionService RegionsCollectionThymeleafController.getRegionService() {
        return regionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regionService
     */
    public void RegionsCollectionThymeleafController.setRegionService(RegionService regionService) {
        this.regionService = regionService;
    }
    
}