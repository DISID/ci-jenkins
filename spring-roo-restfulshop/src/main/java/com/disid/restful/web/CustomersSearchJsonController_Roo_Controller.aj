// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.web;

import com.disid.restful.service.api.CustomerService;
import com.disid.restful.web.CustomersSearchJsonController;

privileged aspect CustomersSearchJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerService CustomersSearchJsonController.customerService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerService
     */
    public CustomerService CustomersSearchJsonController.getCustomerService() {
        return customerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerService
     */
    public void CustomersSearchJsonController.setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }
    
}