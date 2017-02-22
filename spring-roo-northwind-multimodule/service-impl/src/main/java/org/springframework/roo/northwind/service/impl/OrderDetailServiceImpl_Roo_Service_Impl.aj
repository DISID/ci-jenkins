// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.service.impl;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.OrderDetail;
import org.springframework.roo.northwind.model.Product;
import org.springframework.roo.northwind.repository.OrderDetailRepository;
import org.springframework.roo.northwind.service.impl.OrderDetailServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect OrderDetailServiceImpl_Roo_Service_Impl {
    
    declare @type: OrderDetailServiceImpl: @Service;
    
    declare @type: OrderDetailServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private OrderDetailRepository OrderDetailServiceImpl.orderDetailRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param orderDetailRepository
     */
    @Autowired
    public OrderDetailServiceImpl.new(OrderDetailRepository orderDetailRepository) {
        setOrderDetailRepository(orderDetailRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return OrderDetailRepository
     */
    public OrderDetailRepository OrderDetailServiceImpl.getOrderDetailRepository() {
        return orderDetailRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetailRepository
     */
    public void OrderDetailServiceImpl.setOrderDetailRepository(OrderDetailRepository orderDetailRepository) {
        this.orderDetailRepository = orderDetailRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetail
     */
    @Transactional
    public void OrderDetailServiceImpl.delete(OrderDetail orderDetail) {
        // Clear bidirectional many-to-one child relationship with Product
        if (orderDetail.getProduct() != null) {
            orderDetail.getProduct().getOrderDetails().remove(orderDetail);
        }
        
        // Clear bidirectional many-to-one child relationship with CustomerOrder
        if (orderDetail.getCustomerOrder() != null) {
            orderDetail.getCustomerOrder().getOrderDetails().remove(orderDetail);
        }
        
        getOrderDetailRepository().delete(orderDetail);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<OrderDetail> OrderDetailServiceImpl.save(Iterable<OrderDetail> entities) {
        return getOrderDetailRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void OrderDetailServiceImpl.delete(Iterable<Long> ids) {
        List<OrderDetail> toDelete = getOrderDetailRepository().findAll(ids);
        getOrderDetailRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return OrderDetail
     */
    @Transactional
    public OrderDetail OrderDetailServiceImpl.save(OrderDetail entity) {
        return getOrderDetailRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return OrderDetail
     */
    public OrderDetail OrderDetailServiceImpl.findOne(Long id) {
        return getOrderDetailRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return OrderDetail
     */
    public OrderDetail OrderDetailServiceImpl.findOneForUpdate(Long id) {
        return getOrderDetailRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<OrderDetail> OrderDetailServiceImpl.findAll(Iterable<Long> ids) {
        return getOrderDetailRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<OrderDetail> OrderDetailServiceImpl.findAll() {
        return getOrderDetailRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long OrderDetailServiceImpl.count() {
        return getOrderDetailRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<OrderDetail> OrderDetailServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getOrderDetailRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<OrderDetail> OrderDetailServiceImpl.findByCustomerOrder(CustomerOrder customerOrder, GlobalSearch globalSearch, Pageable pageable) {
        return getOrderDetailRepository().findByCustomerOrder(customerOrder, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<OrderDetail> OrderDetailServiceImpl.findByProduct(Product product, GlobalSearch globalSearch, Pageable pageable) {
        return getOrderDetailRepository().findByProduct(product, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @return Long
     */
    public long OrderDetailServiceImpl.countByCustomerOrder(CustomerOrder customerOrder) {
        return getOrderDetailRepository().countByCustomerOrder(customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return Long
     */
    public long OrderDetailServiceImpl.countByProduct(Product product) {
        return getOrderDetailRepository().countByProduct(product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<OrderDetail> OrderDetailServiceImpl.getEntityType() {
        return OrderDetail.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> OrderDetailServiceImpl.getIdType() {
        return Long.class;
    }
    
}
