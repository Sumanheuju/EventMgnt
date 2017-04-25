/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.controller.user;

import com.themercinaries.kabita.eventmgnt.dao.EventDAO;
import com.themercinaries.kabita.eventmgnt.entity.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author sumanheuju
 */
@Controller
@RequestMapping(value ="/events")
public class EventController {
    
    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String createEvent(Model model){
        model.addAttribute("event", new Event());
        return "/event/create";
    }
    
    
}
