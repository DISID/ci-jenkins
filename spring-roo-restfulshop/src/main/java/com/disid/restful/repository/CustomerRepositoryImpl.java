package com.disid.restful.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.disid.restful.model.Customer;

/**
 * = CustomerRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = CustomerRepositoryCustom.class)
public class CustomerRepositoryImpl extends QueryDslRepositorySupportExt<Customer> {

    /**
     * TODO Auto-generated constructor documentation
     */
    CustomerRepositoryImpl() {
        super(Customer.class);
    }
}