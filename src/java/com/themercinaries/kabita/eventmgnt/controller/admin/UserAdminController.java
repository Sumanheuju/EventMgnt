/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.controller.admin;

import com.themercinaries.kabita.eventmgnt.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author sumanheuju
 */

@Controller
@RequestMapping(value = "/admin/user")
public class UserAdminController {
    @Autowired
    private UserDAO uDAO;
    
    @RequestMapping(value = "/show" ,method = RequestMethod.GET)
    public String index(){
        return "admin/user/userDetail";
    }


}
