// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import org.springframework.roo.northwind.application.web.CountriesCollectionThymeleafController;
import org.springframework.roo.northwind.service.api.CountryService;

privileged aspect CountriesCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CountryService CountriesCollectionThymeleafController.countryService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CountryService
     */
    public CountryService CountriesCollectionThymeleafController.getCountryService() {
        return countryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param countryService
     */
    public void CountriesCollectionThymeleafController.setCountryService(CountryService countryService) {
        this.countryService = countryService;
    }
    
}
