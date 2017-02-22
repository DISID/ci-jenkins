// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.northwind.model.SoldProduct;
import org.springframework.roo.northwind.repository.SoldProductRepository;
import org.springframework.roo.northwind.repository.SoldProductRepositoryCustom;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SoldProductRepository_Roo_Jpa_Repository {
    
    declare parents: SoldProductRepository extends DetachableJpaRepository<SoldProduct, Long>;
    
    declare parents: SoldProductRepository extends SoldProductRepositoryCustom;
    
    declare @type: SoldProductRepository: @Transactional(readOnly = true);
    
}