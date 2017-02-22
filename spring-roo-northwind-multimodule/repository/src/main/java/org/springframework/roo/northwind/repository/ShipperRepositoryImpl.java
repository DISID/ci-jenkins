package org.springframework.roo.northwind.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.springframework.roo.northwind.model.Shipper;

/**
 * = ShipperRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ShipperRepositoryCustom.class)
public class ShipperRepositoryImpl extends QueryDslRepositorySupportExt<Shipper> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ShipperRepositoryImpl() {
        super(Shipper.class);
    }
}