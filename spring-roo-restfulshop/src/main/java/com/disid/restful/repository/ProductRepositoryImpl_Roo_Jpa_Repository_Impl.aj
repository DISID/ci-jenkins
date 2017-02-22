// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.repository;

import com.disid.restful.model.Category;
import com.disid.restful.model.Product;
import com.disid.restful.model.QProduct;
import com.disid.restful.repository.ProductRepositoryCustom;
import com.disid.restful.repository.ProductRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect ProductRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: ProductRepositoryImpl implements ProductRepositoryCustom;
    
    declare @type: ProductRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ProductRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ProductRepositoryImpl.DESCRIPTION = "description";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Product> ProductRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QProduct product = QProduct.product;
        
        JPQLQuery<Product> query = from(product);
        
        Path<?>[] paths = new Path<?>[] {product.name,product.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, product.name)
			.map(DESCRIPTION, product.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param categories
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Product> ProductRepositoryImpl.findByCategoriesContains(Category categories, GlobalSearch globalSearch, Pageable pageable) {
        
        QProduct product = QProduct.product;
        
        JPQLQuery<Product> query = from(product);
        
        Assert.notNull(categories, "categories is required");
        
        query.where(product.categories.contains(categories));
        Path<?>[] paths = new Path<?>[] {product.name,product.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, product.name)
			.map(DESCRIPTION, product.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, product);
    }
    
}
