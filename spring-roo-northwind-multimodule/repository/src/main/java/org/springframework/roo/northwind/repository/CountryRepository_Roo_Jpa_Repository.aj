// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.repository.CountryRepository;
import org.springframework.roo.northwind.repository.CountryRepositoryCustom;
import org.springframework.roo.northwind.repository.ReadOnlyRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CountryRepository_Roo_Jpa_Repository {
    
    declare parents: CountryRepository extends ReadOnlyRepository<Country, Long>;
    
    declare parents: CountryRepository extends CountryRepositoryCustom;
    
    declare @type: CountryRepository: @Transactional(readOnly = true);
    
}
