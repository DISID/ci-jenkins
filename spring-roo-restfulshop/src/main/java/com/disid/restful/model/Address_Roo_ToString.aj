// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.model;

import com.disid.restful.model.Address;

privileged aspect Address_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Address.toString() {
        return "Address {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", street='" + street + '\'' + 
                ", city='" + city + '\'' + 
                ", streetNumber='" + streetNumber + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}