// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.QShipper;
import org.springframework.roo.northwind.model.Shipper;
import org.springframework.roo.northwind.model.ShipperPhoneFormBean;
import org.springframework.roo.northwind.repository.ShipperRepositoryCustom;
import org.springframework.roo.northwind.repository.ShipperRepositoryImpl;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ShipperRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: ShipperRepositoryImpl implements ShipperRepositoryCustom;
    
    declare @type: ShipperRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ShipperRepositoryImpl.COMPANY_NAME = "companyName";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ShipperRepositoryImpl.PHONE = "phone";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Shipper> ShipperRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QShipper shipper = QShipper.shipper;
        
        JPQLQuery<Shipper> query = from(shipper);
        
        Path<?>[] paths = new Path<?>[] {shipper.companyName,shipper.phone};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(COMPANY_NAME, shipper.companyName)
			.map(PHONE, shipper.phone);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, shipper);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Shipper> ShipperRepositoryImpl.findByPhone(ShipperPhoneFormBean formBean, GlobalSearch globalSearch, Pageable pageable) {
        
        QShipper shipper = QShipper.shipper;
        
        JPQLQuery<Shipper> query = from(shipper);
        
        if (formBean != null) {
        BooleanBuilder searchCondition = new BooleanBuilder();
                if (formBean.getPhone() != null) {
                        searchCondition.and(shipper.phone.eq(formBean.getPhone()));
                }
        if (searchCondition.hasValue()) {
            query.where(searchCondition);
        }
        }
        
        Path<?>[] paths = new Path<?>[] {shipper.companyName,shipper.phone};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(COMPANY_NAME, shipper.companyName)
			.map(PHONE, shipper.phone);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, shipper);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @return Long
     */
    public long ShipperRepositoryImpl.countByPhone(ShipperPhoneFormBean formBean) {
        
        QShipper shipper = QShipper.shipper;
        
        JPQLQuery<Shipper> query = from(shipper);
        
        BooleanBuilder searchCondition = new BooleanBuilder();
                if (formBean.getPhone() != null) {
                        searchCondition.and(shipper.phone.eq(formBean.getPhone()));
                }
        if (searchCondition.hasValue()) {
            query.where(searchCondition);
        }
        return query.fetchCount();
    }
    
}
