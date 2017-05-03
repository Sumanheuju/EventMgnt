/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.controller;

import com.themercinaries.kabita.eventmgnt.dao.EventDAO;
import com.themercinaries.kabita.eventmgnt.dao.UserDAO;
import com.themercinaries.kabita.eventmgnt.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author sumanheuju
 */
@Controller
@RequestMapping(value = "/")
public class HomeController {
    @Autowired
    private UserDAO uDAO;
    
    @Autowired
    private EventDAO eDAO;
    
    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model){
        
        model.addAttribute("event", eDAO.getAll());
        return "index";
    }
    
//    @RequestMapping(value = "/register", method = RequestMethod.GET)
//    public String add(Model model){
//        model.addAttribute("user", new User());
//        return "register";
//    }
    
    @RequestMapping(value = "/register/save", method = RequestMethod.POST)
    public String save(@RequestParam("username") String username,
                        @RequestParam("email") String email,
                        @RequestParam("password") String password){
        
        User usr = new User();
        
        usr.setUsername(username);
        usr.setEmail(email);
        usr.setPassword(password);
        
        uDAO.insert(usr);
        return "redirect:/";
    }
}
