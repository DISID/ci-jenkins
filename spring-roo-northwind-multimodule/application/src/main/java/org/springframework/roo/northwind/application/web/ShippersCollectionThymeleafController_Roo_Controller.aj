// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import org.springframework.roo.northwind.application.web.ShippersCollectionThymeleafController;
import org.springframework.roo.northwind.service.api.ShipperService;

privileged aspect ShippersCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ShipperService ShippersCollectionThymeleafController.shipperService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ShipperService
     */
    public ShipperService ShippersCollectionThymeleafController.getShipperService() {
        return shipperService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipperService
     */
    public void ShippersCollectionThymeleafController.setShipperService(ShipperService shipperService) {
        this.shipperService = shipperService;
    }
    
}
