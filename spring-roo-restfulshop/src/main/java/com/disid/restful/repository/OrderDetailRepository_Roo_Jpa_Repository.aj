// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.repository;

import com.disid.restful.model.CustomerOrder;
import com.disid.restful.model.OrderDetail;
import com.disid.restful.model.Product;
import com.disid.restful.repository.OrderDetailRepository;
import com.disid.restful.repository.OrderDetailRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

privileged aspect OrderDetailRepository_Roo_Jpa_Repository {
    
    declare parents: OrderDetailRepository extends DetachableJpaRepository<OrderDetail, Long>;
    
    declare parents: OrderDetailRepository extends OrderDetailRepositoryCustom;
    
    declare @type: OrderDetailRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return Long
     */
    public abstract long OrderDetailRepository.countByProduct(Product product);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @return Long
     */
    public abstract long OrderDetailRepository.countByCustomerOrder(CustomerOrder customerOrder);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return OrderDetail
     */
    public abstract OrderDetail OrderDetailRepository.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return List
     */
    public abstract List<OrderDetail> OrderDetailRepository.findAll(Iterable<Long> id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetail
     * @return OrderDetail
     */
    public abstract OrderDetail OrderDetailRepository.save(OrderDetail orderDetail);
    
}
