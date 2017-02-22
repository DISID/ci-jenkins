// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Locale;
import javax.validation.Valid;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.application.web.ShippersItemThymeleafController;
import org.springframework.roo.northwind.application.web.ShippersItemThymeleafLinkFactory;
import org.springframework.roo.northwind.model.Shipper;
import org.springframework.roo.northwind.service.api.ShipperService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect ShippersItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ShippersItemThymeleafController: @Controller;
    
    declare @type: ShippersItemThymeleafController: @RequestMapping(value = "/shippers/{shipper}", name = "ShippersItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ShippersItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ShippersItemThymeleafController> ShippersItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param shipperService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ShippersItemThymeleafController.new(ShipperService shipperService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setShipperService(shipperService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ShippersItemThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ShippersItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ShippersItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ShippersItemThymeleafController> ShippersItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ShippersItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ShippersItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Shipper
     */
    @ModelAttribute
    public Shipper ShippersItemThymeleafController.getShipper(@PathVariable("shipper") Long id, Locale locale, HttpMethod method) {
        Shipper shipper = null;
        if (HttpMethod.PUT.equals(method)) {
            shipper = shipperService.findOneForUpdate(id);
        } else {
            shipper = shipperService.findOne(id);
        }
        
        if (shipper == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Shipper", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return shipper;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ShippersItemThymeleafController.show(@ModelAttribute Shipper shipper, Model model) {
        return new ModelAndView("shippers/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ShippersItemThymeleafController.showInline(@ModelAttribute Shipper shipper, Model model) {
        return new ModelAndView("shippers/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("shipper")
    public void ShippersItemThymeleafController.initShipperBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ShippersItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ShippersItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ShippersItemThymeleafController.editForm(@ModelAttribute Shipper shipper, Model model) {
        populateForm(model);
        
        return new ModelAndView("shippers/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @param version
     * @param concurrencyControl
     * @param result
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ShippersItemThymeleafController.update(@Valid @ModelAttribute Shipper shipper, @RequestParam("version") Long version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, BindingResult result, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("shippers/edit");
        }
        // Concurrency control
        Shipper existingShipper = getShipperService().findOne(shipper.getId());
        if(shipper.getVersion() != existingShipper.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("concurrency", true);
            return new ModelAndView("shippers/edit");
        } else if(shipper.getVersion() != existingShipper.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("shipper", existingShipper);
            model.addAttribute("concurrency", false);
            return new ModelAndView("shippers/edit");
        } else if(shipper.getVersion() != existingShipper.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            shipper.setVersion(existingShipper.getVersion());
        }
        Shipper savedShipper = getShipperService().save(shipper);
        UriComponents showURI = getItemLink().to(ShippersItemThymeleafLinkFactory.SHOW).with("shipper", savedShipper.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ShippersItemThymeleafController.delete(@ModelAttribute Shipper shipper) {
        getShipperService().delete(shipper);
        return ResponseEntity.ok().build();
    }
    
}
