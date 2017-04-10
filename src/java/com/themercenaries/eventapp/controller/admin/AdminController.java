/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercenaries.eventapp.controller.admin;

import com.themercenaries.eventapp.dao.UserDAO;
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
@RequestMapping(value = "/admin/user")
public class AdminController {
   
    @Autowired
    private UserDAO uDAO;
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("users", uDAO.getAll());
        return "admin/user/userDetails";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(){
        return "login";
    }
}
