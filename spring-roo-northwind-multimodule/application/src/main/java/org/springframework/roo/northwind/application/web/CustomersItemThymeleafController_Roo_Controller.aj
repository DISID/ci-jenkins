// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import org.springframework.roo.northwind.application.web.CustomersItemThymeleafController;
import org.springframework.roo.northwind.service.api.CustomerService;

privileged aspect CustomersItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerService CustomersItemThymeleafController.customerService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerService
     */
    public CustomerService CustomersItemThymeleafController.getCustomerService() {
        return customerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerService
     */
    public void CustomersItemThymeleafController.setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }
    
}
