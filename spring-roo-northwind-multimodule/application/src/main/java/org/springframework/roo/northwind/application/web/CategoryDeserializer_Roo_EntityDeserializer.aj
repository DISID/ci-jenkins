// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.northwind.application.web.CategoryDeserializer;
import org.springframework.roo.northwind.model.Category;
import org.springframework.roo.northwind.service.api.CategoryService;

privileged aspect CategoryDeserializer_Roo_EntityDeserializer {
    
    declare @type: CategoryDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CategoryService
     */
    public CategoryService CategoryDeserializer.getCategoryService() {
        return categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param categoryService
     */
    public void CategoryDeserializer.setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService CategoryDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void CategoryDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Category
     * @throws IOException
     */
    public Category CategoryDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Category category = categoryService.findOne(id);
        if (category == null) {
            throw new NotFoundException("Category not found");
        }
        return category;
    }
    
}
