// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.web.mvc.util.MethodLinkFactory;
import io.springlets.web.mvc.util.SpringletsMvcUriComponentsBuilder;
import java.util.Map;
import org.springframework.roo.northwind.application.web.CategoriesCollectionThymeleafController;
import org.springframework.roo.northwind.application.web.CategoriesCollectionThymeleafLinkFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;

privileged aspect CategoriesCollectionThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: CategoriesCollectionThymeleafLinkFactory implements MethodLinkFactory<CategoriesCollectionThymeleafController>;
    
    declare @type: CategoriesCollectionThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoriesCollectionThymeleafLinkFactory.LIST = "list";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoriesCollectionThymeleafLinkFactory.DATATABLES = "datatables";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoriesCollectionThymeleafLinkFactory.SELECT2 = "select2";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoriesCollectionThymeleafLinkFactory.CREATE = "create";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoriesCollectionThymeleafLinkFactory.CREATEFORM = "createForm";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoriesCollectionThymeleafLinkFactory.DELETEBATCH = "deleteBatch";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoriesCollectionThymeleafLinkFactory.EXPORTCSV = "exportCsv";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoriesCollectionThymeleafLinkFactory.EXPORTPDF = "exportPdf";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoriesCollectionThymeleafLinkFactory.EXPORTXLS = "exportXls";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<CategoriesCollectionThymeleafController> CategoriesCollectionThymeleafLinkFactory.getControllerClass() {
        return CategoriesCollectionThymeleafController.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents CategoriesCollectionThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(LIST)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).list(null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(DATATABLES)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).datatables(null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(SELECT2)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).select2(null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).create(null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATEFORM)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).createForm(null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(DELETEBATCH)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).deleteBatch(null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(EXPORTCSV)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).exportCsv(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(EXPORTPDF)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).exportPdf(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(EXPORTXLS)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).exportXls(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
}
