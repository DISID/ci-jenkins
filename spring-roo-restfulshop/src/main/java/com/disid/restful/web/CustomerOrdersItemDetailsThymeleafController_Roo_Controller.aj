// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.web;

import com.disid.restful.service.api.CustomerOrderService;
import com.disid.restful.service.api.OrderDetailService;
import com.disid.restful.web.CustomerOrdersItemDetailsThymeleafController;

privileged aspect CustomerOrdersItemDetailsThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerOrderService CustomerOrdersItemDetailsThymeleafController.customerOrderService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private OrderDetailService CustomerOrdersItemDetailsThymeleafController.orderDetailService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderService
     */
    public CustomerOrderService CustomerOrdersItemDetailsThymeleafController.getCustomerOrderService() {
        return customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrderService
     */
    public void CustomerOrdersItemDetailsThymeleafController.setCustomerOrderService(CustomerOrderService customerOrderService) {
        this.customerOrderService = customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return OrderDetailService
     */
    public OrderDetailService CustomerOrdersItemDetailsThymeleafController.getOrderDetailService() {
        return orderDetailService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetailService
     */
    public void CustomerOrdersItemDetailsThymeleafController.setOrderDetailService(OrderDetailService orderDetailService) {
        this.orderDetailService = orderDetailService;
    }
    
}
