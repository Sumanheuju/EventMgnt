/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.controller;

import javax.servlet.http.HttpServletRequest;
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
public class loginController {
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(){
        
        return "login";
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String chkLogin(HttpServletRequest request){
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if(email.equals("super@gmail.com") && password.equals("man")){
            request.getSession().setAttribute("loggedin", true);
            
            return "redirect:/admin/user/show";
        }else{
            return "redirect:/login?error";
        }
    }
}
