// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import org.springframework.roo.northwind.application.web.CitiesCollectionJsonController;
import org.springframework.roo.northwind.service.api.CityService;

privileged aspect CitiesCollectionJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CityService CitiesCollectionJsonController.cityService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CityService
     */
    public CityService CitiesCollectionJsonController.getCityService() {
        return cityService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cityService
     */
    public void CitiesCollectionJsonController.setCityService(CityService cityService) {
        this.cityService = cityService;
    }
    
}