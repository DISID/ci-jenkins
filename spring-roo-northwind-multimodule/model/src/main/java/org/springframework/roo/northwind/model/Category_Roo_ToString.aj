// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import org.springframework.roo.northwind.model.Category;

privileged aspect Category_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Category.toString() {
        return "Category {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", name='" + name + '\'' + 
                ", description='" + description + '\'' + 
                ", createdDate='" + createdDate + '\'' + 
                ", createdBy='" + createdBy + '\'' + 
                ", modifiedDate='" + modifiedDate + '\'' + 
                ", modifiedBy='" + modifiedBy + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}
