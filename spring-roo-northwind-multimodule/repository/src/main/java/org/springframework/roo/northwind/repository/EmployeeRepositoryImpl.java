package org.springframework.roo.northwind.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.springframework.roo.northwind.model.Employee;

/**
 * = EmployeeRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = EmployeeRepositoryCustom.class)
public class EmployeeRepositoryImpl extends QueryDslRepositorySupportExt<Employee> {

    /**
     * TODO Auto-generated constructor documentation
     */
    EmployeeRepositoryImpl() {
        super(Employee.class);
    }
}