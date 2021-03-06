package org.springframework.roo.northwind.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.springframework.roo.northwind.model.Region;

/**
 * = RegionRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = RegionRepositoryCustom.class)
public class RegionRepositoryImpl extends QueryDslRepositorySupportExt<Region> {

    /**
     * TODO Auto-generated constructor documentation
     */
    RegionRepositoryImpl() {
        super(Region.class);
    }
}