// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import org.springframework.roo.northwind.application.web.StoresItemThymeleafController;
import org.springframework.roo.northwind.service.api.StoreService;

privileged aspect StoresItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private StoreService StoresItemThymeleafController.storeService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return StoreService
     */
    public StoreService StoresItemThymeleafController.getStoreService() {
        return storeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storeService
     */
    public void StoresItemThymeleafController.setStoreService(StoreService storeService) {
        this.storeService = storeService;
    }
    
}
