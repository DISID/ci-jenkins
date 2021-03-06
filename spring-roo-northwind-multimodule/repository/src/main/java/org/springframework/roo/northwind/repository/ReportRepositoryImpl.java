package org.springframework.roo.northwind.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.springframework.roo.northwind.model.Report;

/**
 * = ReportRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ReportRepositoryCustom.class)
public class ReportRepositoryImpl extends QueryDslRepositorySupportExt<Report> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ReportRepositoryImpl() {
        super(Report.class);
    }
}