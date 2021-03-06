// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import io.springlets.data.domain.GlobalSearch;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.City;
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.Store;
import org.springframework.roo.northwind.model.Supplier;
import org.springframework.roo.northwind.repository.StoreRepositoryCustom;

privileged aspect StoreRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Store> StoreRepositoryCustom.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param suppliers
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Store> StoreRepositoryCustom.findBySuppliersContains(Supplier suppliers, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Store> StoreRepositoryCustom.findByCity(City city, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Store> StoreRepositoryCustom.findByRegion(Region region, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Store> StoreRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
}
