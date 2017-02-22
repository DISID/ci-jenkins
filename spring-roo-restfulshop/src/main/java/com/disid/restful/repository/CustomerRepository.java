package com.disid.restful.repository;
import com.disid.restful.model.Customer;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import com.disid.restful.model.CustomerFindByFirstNameAndLastName;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = CustomerRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Customer.class, finders = { @RooFinder(value = "findByFirstNameAndLastName", returnType = Customer.class, formBean = CustomerFindByFirstNameAndLastName.class) })
public interface CustomerRepository {
}
