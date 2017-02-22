// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.City;
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.model.Customer;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Employee;
import org.springframework.roo.northwind.model.QCustomerOrder;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.Shipper;
import org.springframework.roo.northwind.repository.CustomerOrderRepositoryCustom;
import org.springframework.roo.northwind.repository.CustomerOrderRepositoryImpl;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect CustomerOrderRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: CustomerOrderRepositoryImpl implements CustomerOrderRepositoryCustom;
    
    declare @type: CustomerOrderRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.CITY = "city";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.COUNTRY = "country";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.CUSTOMER = "customer";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.ORDER_DATE = "orderDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.REQUIRED_DATE = "requiredDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.SHIPPED_DATE = "shippedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.FREIGHT = "freight";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.SHIP_NAME = "shipName";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.SHIP_ADDRESS = "shipAddress";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.SHIP_POSTAL_CODE = "shipPostalCode";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.STATUS = "status";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.SHIP_PHONE = "shipPhone";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.INVOICE_DATE = "invoiceDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.CLOSE_DATE = "closeDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.EMPLOYEE = "employee";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.REGION = "region";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrderRepositoryImpl.SHIPPER = "shipper";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomerOrder customerOrder = QCustomerOrder.customerOrder;
        
        JPQLQuery<CustomerOrder> query = from(customerOrder);
        
        Path<?>[] paths = new Path<?>[] {customerOrder.city,customerOrder.country,customerOrder.customer,customerOrder.orderDate,customerOrder.requiredDate,customerOrder.shippedDate,customerOrder.freight,customerOrder.shipName,customerOrder.shipAddress,customerOrder.shipPostalCode,customerOrder.status,customerOrder.shipPhone,customerOrder.invoiceDate,customerOrder.closeDate,customerOrder.employee,customerOrder.region,customerOrder.shipper};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CITY, customerOrder.city)
			.map(COUNTRY, customerOrder.country)
			.map(CUSTOMER, customerOrder.customer)
			.map(ORDER_DATE, customerOrder.orderDate)
			.map(REQUIRED_DATE, customerOrder.requiredDate)
			.map(SHIPPED_DATE, customerOrder.shippedDate)
			.map(FREIGHT, customerOrder.freight)
			.map(SHIP_NAME, customerOrder.shipName)
			.map(SHIP_ADDRESS, customerOrder.shipAddress)
			.map(SHIP_POSTAL_CODE, customerOrder.shipPostalCode)
			.map(STATUS, customerOrder.status)
			.map(SHIP_PHONE, customerOrder.shipPhone)
			.map(INVOICE_DATE, customerOrder.invoiceDate)
			.map(CLOSE_DATE, customerOrder.closeDate)
			.map(EMPLOYEE, customerOrder.employee)
			.map(REGION, customerOrder.region)
			.map(SHIPPER, customerOrder.shipper);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderRepositoryImpl.findByCity(City city, GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomerOrder customerOrder = QCustomerOrder.customerOrder;
        
        JPQLQuery<CustomerOrder> query = from(customerOrder);
        
        Assert.notNull(city, "city is required");
        
        query.where(customerOrder.city.eq(city));
        Path<?>[] paths = new Path<?>[] {customerOrder.city,customerOrder.country,customerOrder.customer,customerOrder.orderDate,customerOrder.requiredDate,customerOrder.shippedDate,customerOrder.freight,customerOrder.shipName,customerOrder.shipAddress,customerOrder.shipPostalCode,customerOrder.status,customerOrder.shipPhone,customerOrder.invoiceDate,customerOrder.closeDate,customerOrder.employee,customerOrder.region,customerOrder.shipper};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CITY, customerOrder.city)
			.map(COUNTRY, customerOrder.country)
			.map(CUSTOMER, customerOrder.customer)
			.map(ORDER_DATE, customerOrder.orderDate)
			.map(REQUIRED_DATE, customerOrder.requiredDate)
			.map(SHIPPED_DATE, customerOrder.shippedDate)
			.map(FREIGHT, customerOrder.freight)
			.map(SHIP_NAME, customerOrder.shipName)
			.map(SHIP_ADDRESS, customerOrder.shipAddress)
			.map(SHIP_POSTAL_CODE, customerOrder.shipPostalCode)
			.map(STATUS, customerOrder.status)
			.map(SHIP_PHONE, customerOrder.shipPhone)
			.map(INVOICE_DATE, customerOrder.invoiceDate)
			.map(CLOSE_DATE, customerOrder.closeDate)
			.map(EMPLOYEE, customerOrder.employee)
			.map(REGION, customerOrder.region)
			.map(SHIPPER, customerOrder.shipper);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderRepositoryImpl.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomerOrder customerOrder = QCustomerOrder.customerOrder;
        
        JPQLQuery<CustomerOrder> query = from(customerOrder);
        
        Assert.notNull(country, "country is required");
        
        query.where(customerOrder.country.eq(country));
        Path<?>[] paths = new Path<?>[] {customerOrder.city,customerOrder.country,customerOrder.customer,customerOrder.orderDate,customerOrder.requiredDate,customerOrder.shippedDate,customerOrder.freight,customerOrder.shipName,customerOrder.shipAddress,customerOrder.shipPostalCode,customerOrder.status,customerOrder.shipPhone,customerOrder.invoiceDate,customerOrder.closeDate,customerOrder.employee,customerOrder.region,customerOrder.shipper};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CITY, customerOrder.city)
			.map(COUNTRY, customerOrder.country)
			.map(CUSTOMER, customerOrder.customer)
			.map(ORDER_DATE, customerOrder.orderDate)
			.map(REQUIRED_DATE, customerOrder.requiredDate)
			.map(SHIPPED_DATE, customerOrder.shippedDate)
			.map(FREIGHT, customerOrder.freight)
			.map(SHIP_NAME, customerOrder.shipName)
			.map(SHIP_ADDRESS, customerOrder.shipAddress)
			.map(SHIP_POSTAL_CODE, customerOrder.shipPostalCode)
			.map(STATUS, customerOrder.status)
			.map(SHIP_PHONE, customerOrder.shipPhone)
			.map(INVOICE_DATE, customerOrder.invoiceDate)
			.map(CLOSE_DATE, customerOrder.closeDate)
			.map(EMPLOYEE, customerOrder.employee)
			.map(REGION, customerOrder.region)
			.map(SHIPPER, customerOrder.shipper);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderRepositoryImpl.findByCustomer(Customer customer, GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomerOrder customerOrder = QCustomerOrder.customerOrder;
        
        JPQLQuery<CustomerOrder> query = from(customerOrder);
        
        Assert.notNull(customer, "customer is required");
        
        query.where(customerOrder.customer.eq(customer));
        Path<?>[] paths = new Path<?>[] {customerOrder.city,customerOrder.country,customerOrder.customer,customerOrder.orderDate,customerOrder.requiredDate,customerOrder.shippedDate,customerOrder.freight,customerOrder.shipName,customerOrder.shipAddress,customerOrder.shipPostalCode,customerOrder.status,customerOrder.shipPhone,customerOrder.invoiceDate,customerOrder.closeDate,customerOrder.employee,customerOrder.region,customerOrder.shipper};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CITY, customerOrder.city)
			.map(COUNTRY, customerOrder.country)
			.map(CUSTOMER, customerOrder.customer)
			.map(ORDER_DATE, customerOrder.orderDate)
			.map(REQUIRED_DATE, customerOrder.requiredDate)
			.map(SHIPPED_DATE, customerOrder.shippedDate)
			.map(FREIGHT, customerOrder.freight)
			.map(SHIP_NAME, customerOrder.shipName)
			.map(SHIP_ADDRESS, customerOrder.shipAddress)
			.map(SHIP_POSTAL_CODE, customerOrder.shipPostalCode)
			.map(STATUS, customerOrder.status)
			.map(SHIP_PHONE, customerOrder.shipPhone)
			.map(INVOICE_DATE, customerOrder.invoiceDate)
			.map(CLOSE_DATE, customerOrder.closeDate)
			.map(EMPLOYEE, customerOrder.employee)
			.map(REGION, customerOrder.region)
			.map(SHIPPER, customerOrder.shipper);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employee
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderRepositoryImpl.findByEmployee(Employee employee, GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomerOrder customerOrder = QCustomerOrder.customerOrder;
        
        JPQLQuery<CustomerOrder> query = from(customerOrder);
        
        Assert.notNull(employee, "employee is required");
        
        query.where(customerOrder.employee.eq(employee));
        Path<?>[] paths = new Path<?>[] {customerOrder.city,customerOrder.country,customerOrder.customer,customerOrder.orderDate,customerOrder.requiredDate,customerOrder.shippedDate,customerOrder.freight,customerOrder.shipName,customerOrder.shipAddress,customerOrder.shipPostalCode,customerOrder.status,customerOrder.shipPhone,customerOrder.invoiceDate,customerOrder.closeDate,customerOrder.employee,customerOrder.region,customerOrder.shipper};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CITY, customerOrder.city)
			.map(COUNTRY, customerOrder.country)
			.map(CUSTOMER, customerOrder.customer)
			.map(ORDER_DATE, customerOrder.orderDate)
			.map(REQUIRED_DATE, customerOrder.requiredDate)
			.map(SHIPPED_DATE, customerOrder.shippedDate)
			.map(FREIGHT, customerOrder.freight)
			.map(SHIP_NAME, customerOrder.shipName)
			.map(SHIP_ADDRESS, customerOrder.shipAddress)
			.map(SHIP_POSTAL_CODE, customerOrder.shipPostalCode)
			.map(STATUS, customerOrder.status)
			.map(SHIP_PHONE, customerOrder.shipPhone)
			.map(INVOICE_DATE, customerOrder.invoiceDate)
			.map(CLOSE_DATE, customerOrder.closeDate)
			.map(EMPLOYEE, customerOrder.employee)
			.map(REGION, customerOrder.region)
			.map(SHIPPER, customerOrder.shipper);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderRepositoryImpl.findByRegion(Region region, GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomerOrder customerOrder = QCustomerOrder.customerOrder;
        
        JPQLQuery<CustomerOrder> query = from(customerOrder);
        
        Assert.notNull(region, "region is required");
        
        query.where(customerOrder.region.eq(region));
        Path<?>[] paths = new Path<?>[] {customerOrder.city,customerOrder.country,customerOrder.customer,customerOrder.orderDate,customerOrder.requiredDate,customerOrder.shippedDate,customerOrder.freight,customerOrder.shipName,customerOrder.shipAddress,customerOrder.shipPostalCode,customerOrder.status,customerOrder.shipPhone,customerOrder.invoiceDate,customerOrder.closeDate,customerOrder.employee,customerOrder.region,customerOrder.shipper};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CITY, customerOrder.city)
			.map(COUNTRY, customerOrder.country)
			.map(CUSTOMER, customerOrder.customer)
			.map(ORDER_DATE, customerOrder.orderDate)
			.map(REQUIRED_DATE, customerOrder.requiredDate)
			.map(SHIPPED_DATE, customerOrder.shippedDate)
			.map(FREIGHT, customerOrder.freight)
			.map(SHIP_NAME, customerOrder.shipName)
			.map(SHIP_ADDRESS, customerOrder.shipAddress)
			.map(SHIP_POSTAL_CODE, customerOrder.shipPostalCode)
			.map(STATUS, customerOrder.status)
			.map(SHIP_PHONE, customerOrder.shipPhone)
			.map(INVOICE_DATE, customerOrder.invoiceDate)
			.map(CLOSE_DATE, customerOrder.closeDate)
			.map(EMPLOYEE, customerOrder.employee)
			.map(REGION, customerOrder.region)
			.map(SHIPPER, customerOrder.shipper);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderRepositoryImpl.findByShipper(Shipper shipper, GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomerOrder customerOrder = QCustomerOrder.customerOrder;
        
        JPQLQuery<CustomerOrder> query = from(customerOrder);
        
        Assert.notNull(shipper, "shipper is required");
        
        query.where(customerOrder.shipper.eq(shipper));
        Path<?>[] paths = new Path<?>[] {customerOrder.city,customerOrder.country,customerOrder.customer,customerOrder.orderDate,customerOrder.requiredDate,customerOrder.shippedDate,customerOrder.freight,customerOrder.shipName,customerOrder.shipAddress,customerOrder.shipPostalCode,customerOrder.status,customerOrder.shipPhone,customerOrder.invoiceDate,customerOrder.closeDate,customerOrder.employee,customerOrder.region,customerOrder.shipper};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(CITY, customerOrder.city)
			.map(COUNTRY, customerOrder.country)
			.map(CUSTOMER, customerOrder.customer)
			.map(ORDER_DATE, customerOrder.orderDate)
			.map(REQUIRED_DATE, customerOrder.requiredDate)
			.map(SHIPPED_DATE, customerOrder.shippedDate)
			.map(FREIGHT, customerOrder.freight)
			.map(SHIP_NAME, customerOrder.shipName)
			.map(SHIP_ADDRESS, customerOrder.shipAddress)
			.map(SHIP_POSTAL_CODE, customerOrder.shipPostalCode)
			.map(STATUS, customerOrder.status)
			.map(SHIP_PHONE, customerOrder.shipPhone)
			.map(INVOICE_DATE, customerOrder.invoiceDate)
			.map(CLOSE_DATE, customerOrder.closeDate)
			.map(EMPLOYEE, customerOrder.employee)
			.map(REGION, customerOrder.region)
			.map(SHIPPER, customerOrder.shipper);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customerOrder);
    }
    
}
