// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.model;

import com.disid.restful.model.Address;
import com.disid.restful.model.Customer;
import com.disid.restful.model.CustomerOrder;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect Customer_Roo_Jpa_Entity {
    
    declare @type: Customer: @Entity;
    
    declare @type: Customer: @EntityFormat("#{firstName} #{lastName}");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Customer.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Customer.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param address
     */
    public void Customer.addToAddress(Address address) {
        if (address == null) {
            removeFromAddress();
        } else {
            this.address = address;
            address.setCustomer(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    public void Customer.removeFromAddress() {
        if (this.address != null) {
            address.setCustomer(null);
        }
        this.address = null;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ordersToAdd
     */
    public void Customer.addToOrders(Iterable<CustomerOrder> ordersToAdd) {
        Assert.notNull(ordersToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (CustomerOrder item : ordersToAdd) {
            this.orders.add(item);
            item.setCustomer(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ordersToRemove
     */
    public void Customer.removeFromOrders(Iterable<CustomerOrder> ordersToRemove) {
        Assert.notNull(ordersToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (CustomerOrder item : ordersToRemove) {
            this.orders.remove(item);
            item.setCustomer(null);
        }
    }
    
}
