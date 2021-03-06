// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.northwind.model.Category;
import org.springframework.roo.northwind.repository.CategoryRepository;
import org.springframework.roo.northwind.repository.CategoryRepositoryCustom;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CategoryRepository_Roo_Jpa_Repository {
    
    declare parents: CategoryRepository extends DetachableJpaRepository<Category, Long>;
    
    declare parents: CategoryRepository extends CategoryRepositoryCustom;
    
    declare @type: CategoryRepository: @Transactional(readOnly = true);
    
}
