// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.web;

import com.disid.restful.service.api.CategoryService;
import com.disid.restful.web.CategoriesItemJsonController;

privileged aspect CategoriesItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CategoryService CategoriesItemJsonController.categoryService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CategoryService
     */
    public CategoryService CategoriesItemJsonController.getCategoryService() {
        return categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param categoryService
     */
    public void CategoriesItemJsonController.setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
    
}