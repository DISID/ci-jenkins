// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.service.impl;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.repository.CountryRepository;
import org.springframework.roo.northwind.service.api.CustomerOrderService;
import org.springframework.roo.northwind.service.api.PartyService;
import org.springframework.roo.northwind.service.api.RegionService;
import org.springframework.roo.northwind.service.api.StoreService;
import org.springframework.roo.northwind.service.api.SupplierService;
import org.springframework.roo.northwind.service.impl.CountryServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CountryServiceImpl_Roo_Service_Impl {
    
    declare @type: CountryServiceImpl: @Service;
    
    declare @type: CountryServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CountryRepository CountryServiceImpl.countryRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerOrderService CountryServiceImpl.customerOrderService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PartyService CountryServiceImpl.partyService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RegionService CountryServiceImpl.regionService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private StoreService CountryServiceImpl.storeService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SupplierService CountryServiceImpl.supplierService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param countryRepository
     * @param customerOrderService
     * @param partyService
     * @param regionService
     * @param storeService
     * @param supplierService
     */
    @Autowired
    public CountryServiceImpl.new(CountryRepository countryRepository, @Lazy CustomerOrderService customerOrderService, @Lazy PartyService partyService, @Lazy RegionService regionService, @Lazy StoreService storeService, @Lazy SupplierService supplierService) {
        setCountryRepository(countryRepository);
        setCustomerOrderService(customerOrderService);
        setPartyService(partyService);
        setRegionService(regionService);
        setStoreService(storeService);
        setSupplierService(supplierService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CountryRepository
     */
    public CountryRepository CountryServiceImpl.getCountryRepository() {
        return countryRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param countryRepository
     */
    public void CountryServiceImpl.setCountryRepository(CountryRepository countryRepository) {
        this.countryRepository = countryRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderService
     */
    public CustomerOrderService CountryServiceImpl.getCustomerOrderService() {
        return customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrderService
     */
    public void CountryServiceImpl.setCustomerOrderService(CustomerOrderService customerOrderService) {
        this.customerOrderService = customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PartyService
     */
    public PartyService CountryServiceImpl.getPartyService() {
        return partyService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param partyService
     */
    public void CountryServiceImpl.setPartyService(PartyService partyService) {
        this.partyService = partyService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return RegionService
     */
    public RegionService CountryServiceImpl.getRegionService() {
        return regionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regionService
     */
    public void CountryServiceImpl.setRegionService(RegionService regionService) {
        this.regionService = regionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return StoreService
     */
    public StoreService CountryServiceImpl.getStoreService() {
        return storeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storeService
     */
    public void CountryServiceImpl.setStoreService(StoreService storeService) {
        this.storeService = storeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SupplierService
     */
    public SupplierService CountryServiceImpl.getSupplierService() {
        return supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplierService
     */
    public void CountryServiceImpl.setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Country
     */
    public Country CountryServiceImpl.findOne(Long id) {
        return getCountryRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Country> CountryServiceImpl.findAll(Iterable<Long> ids) {
        return getCountryRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Country> CountryServiceImpl.findAll() {
        return getCountryRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CountryServiceImpl.count() {
        return getCountryRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Country> CountryServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getCountryRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Country> CountryServiceImpl.getEntityType() {
        return Country.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> CountryServiceImpl.getIdType() {
        return Long.class;
    }
    
}
