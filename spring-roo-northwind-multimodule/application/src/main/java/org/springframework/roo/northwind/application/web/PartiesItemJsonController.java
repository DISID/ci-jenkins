package org.springframework.roo.northwind.application.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.roo.northwind.model.Party;

/**
 * = PartiesItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Party.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class PartiesItemJsonController {
}
