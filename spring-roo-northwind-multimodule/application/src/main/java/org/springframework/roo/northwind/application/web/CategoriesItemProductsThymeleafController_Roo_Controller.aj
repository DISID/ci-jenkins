// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import org.springframework.roo.northwind.application.web.CategoriesItemProductsThymeleafController;
import org.springframework.roo.northwind.service.api.CategoryService;
import org.springframework.roo.northwind.service.api.ProductService;

privileged aspect CategoriesItemProductsThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CategoryService CategoriesItemProductsThymeleafController.categoryService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ProductService CategoriesItemProductsThymeleafController.productService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CategoryService
     */
    public CategoryService CategoriesItemProductsThymeleafController.getCategoryService() {
        return categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param categoryService
     */
    public void CategoriesItemProductsThymeleafController.setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProductService
     */
    public ProductService CategoriesItemProductsThymeleafController.getProductService() {
        return productService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productService
     */
    public void CategoriesItemProductsThymeleafController.setProductService(ProductService productService) {
        this.productService = productService;
    }
    
}