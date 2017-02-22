// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.springframework.roo.northwind.model.Product;
import org.springframework.roo.northwind.model.Store;
import org.springframework.roo.northwind.model.Supplier;
import org.springframework.util.Assert;

privileged aspect Supplier_Roo_Jpa_Entity {
    
    declare @type: Supplier: @Entity;
    
    declare @type: Supplier: @Table(name = "NW_SUPPLIERS");
    
    declare @type: Supplier: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Supplier.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Supplier.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productsToAdd
     */
    public void Supplier.addToProducts(Iterable<Product> productsToAdd) {
        Assert.notNull(productsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Product item : productsToAdd) {
            this.products.add(item);
            item.setSupplier(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productsToRemove
     */
    public void Supplier.removeFromProducts(Iterable<Product> productsToRemove) {
        Assert.notNull(productsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Product item : productsToRemove) {
            this.products.remove(item);
            item.setSupplier(null);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storesToAdd
     */
    public void Supplier.addToStores(Iterable<Store> storesToAdd) {
        Assert.notNull(storesToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Store item : storesToAdd) {
            this.stores.add(item);
            item.getSuppliers().add(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storesToRemove
     */
    public void Supplier.removeFromStores(Iterable<Store> storesToRemove) {
        Assert.notNull(storesToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Store item : storesToRemove) {
            this.stores.remove(item);
            item.getSuppliers().remove(this);
        }
    }
    
}