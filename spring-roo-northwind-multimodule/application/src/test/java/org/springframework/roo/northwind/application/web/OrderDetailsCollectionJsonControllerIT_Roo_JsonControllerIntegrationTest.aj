// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.boot.test.autoconfigure.web.servlet.SpringletsWebMvcTest;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.roo.northwind.application.web.OrderDetailsCollectionJsonController;
import org.springframework.roo.northwind.application.web.OrderDetailsCollectionJsonControllerIT;
import org.springframework.roo.northwind.model.dod.OrderDetailFactory;
import org.springframework.roo.northwind.service.api.OrderDetailService;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

privileged aspect OrderDetailsCollectionJsonControllerIT_Roo_JsonControllerIntegrationTest {
    
    declare @type: OrderDetailsCollectionJsonControllerIT: @RunWith(SpringRunner.class);
    
    declare @type: OrderDetailsCollectionJsonControllerIT: @SpringletsWebMvcTest(controllers = OrderDetailsCollectionJsonController.class, secure = false);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private MockMvc OrderDetailsCollectionJsonControllerIT.mvc;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @MockBean
    private OrderDetailService OrderDetailsCollectionJsonControllerIT.orderDetailService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private OrderDetailFactory OrderDetailsCollectionJsonControllerIT.factory = new OrderDetailFactory();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MockMvc
     */
    public MockMvc OrderDetailsCollectionJsonControllerIT.getMvc() {
        return mvc;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return OrderDetailService
     */
    public OrderDetailService OrderDetailsCollectionJsonControllerIT.getOrderDetailService() {
        return orderDetailService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetailService
     */
    public void OrderDetailsCollectionJsonControllerIT.setOrderDetailService(OrderDetailService orderDetailService) {
        this.orderDetailService = orderDetailService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return OrderDetailFactory
     */
    public OrderDetailFactory OrderDetailsCollectionJsonControllerIT.getFactory() {
        return factory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param factory
     */
    public void OrderDetailsCollectionJsonControllerIT.setFactory(OrderDetailFactory factory) {
        this.factory = factory;
    }
    
    /**
     * Test method example. To be implemented by developer.
     * 
     */
    @Test
    public void OrderDetailsCollectionJsonControllerIT.testMethodExample() {
        // Setup
        // Previous tasks
        
        // Exercise
        // Execute method to test
        
        // Verify
        // Check results with assertions
    }
    
}