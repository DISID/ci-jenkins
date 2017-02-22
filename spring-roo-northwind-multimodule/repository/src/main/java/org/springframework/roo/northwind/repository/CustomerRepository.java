package org.springframework.roo.northwind.repository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.northwind.model.Customer;
import org.springframework.roo.northwind.model.CustomerInfo;

/**
 * = CustomerRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Customer.class, defaultReturnType = CustomerInfo.class)
public interface CustomerRepository {
}
