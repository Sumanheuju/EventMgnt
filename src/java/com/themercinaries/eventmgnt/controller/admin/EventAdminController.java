/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.eventmgnt.controller.admin;

import com.themercinaries.eventmgnt.dao.EventDAO;
import com.themercinaries.eventmgnt.dao.UserDAO;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
@RequestMapping(value ="/admin/events")
public class EventAdminController {
    @Autowired
    private EventDAO eDAO;
    @Autowired
    private UserDAO uDAO;
    
    @RequestMapping(value = "show", method = RequestMethod.GET)
    public String index(Model model){
        
        
        model.addAttribute("events", eDAO.getAll());
        return "/admin/event/eventDetail";
    }   
}
