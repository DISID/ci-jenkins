// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.model;

import com.disid.restful.model.CustomerOrder;
import com.disid.restful.model.OrderDetail;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect CustomerOrder_Roo_Jpa_Entity {
    
    declare @type: CustomerOrder: @Entity;
    
    declare @type: CustomerOrder: @EntityFormat("#{shipAddress}");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrder.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrder.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param detailsToAdd
     */
    public void CustomerOrder.addToDetails(Iterable<OrderDetail> detailsToAdd) {
        Assert.notNull(detailsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (OrderDetail item : detailsToAdd) {
            this.details.add(item);
            item.setCustomerOrder(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param detailsToRemove
     */
    public void CustomerOrder.removeFromDetails(Iterable<OrderDetail> detailsToRemove) {
        Assert.notNull(detailsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (OrderDetail item : detailsToRemove) {
            this.details.remove(item);
            item.setCustomerOrder(null);
        }
    }
    
}
