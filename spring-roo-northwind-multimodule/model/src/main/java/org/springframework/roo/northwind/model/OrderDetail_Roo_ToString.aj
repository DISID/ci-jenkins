// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import org.springframework.roo.northwind.model.OrderDetail;

privileged aspect OrderDetail_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String OrderDetail.toString() {
        return "OrderDetail {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", unitPrice='" + unitPrice + '\'' + 
                ", quantity='" + quantity + '\'' + 
                ", discount='" + discount + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}
