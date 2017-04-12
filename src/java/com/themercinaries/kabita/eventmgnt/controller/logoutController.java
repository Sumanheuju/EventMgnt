/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author sumanheuju
 */
@Controller
@RequestMapping(value = "/logout")
public class logoutController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        request.getSession(false).invalidate();
        return "redirect:/login";
    }
}
