// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.data.domain.GlobalSearch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.application.web.CountriesCollectionJsonController;
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.service.api.CountryService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect CountriesCollectionJsonController_Roo_JSON {
    
    declare @type: CountriesCollectionJsonController: @RestController;
    
    declare @type: CountriesCollectionJsonController: @RequestMapping(value = "/api/countries", name = "CountriesCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param countryService
     */
    @Autowired
    public CountriesCollectionJsonController.new(CountryService countryService) {
        this.countryService = countryService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Country>> CountriesCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Country> countries = getCountryService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(countries);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents CountriesCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(CountriesCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
}
