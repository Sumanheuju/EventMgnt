/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author sumanheuju
 */
@Controller
@RequestMapping(value ="/admin/event")
public class EventAdminController {
    
    @RequestMapping(value="show", method = RequestMethod.GET)
    public String show(){
        return "/admin/event/eventDetail";
    }
}
