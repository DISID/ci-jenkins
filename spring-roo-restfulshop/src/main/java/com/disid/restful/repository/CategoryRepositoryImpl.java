package com.disid.restful.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.disid.restful.model.Category;

/**
 * = CategoryRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = CategoryRepositoryCustom.class)
public class CategoryRepositoryImpl extends QueryDslRepositorySupportExt<Category> {

    /**
     * TODO Auto-generated constructor documentation
     */
    CategoryRepositoryImpl() {
        super(Category.class);
    }
}