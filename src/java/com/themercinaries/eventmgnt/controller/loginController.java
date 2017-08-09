/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.eventmgnt.controller;

import com.themercinaries.eventmgnt.dao.UserDAO;
import com.themercinaries.eventmgnt.entity.User;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author sumanheuju
 */

@Controller
public class loginController{
    @Autowired
    UserDAO userDAO;
 
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String chkLogin(HttpServletRequest request){
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Map<String, String> messages = new HashMap<String, String>();

        if (email == null || email.isEmpty()) {
            messages.put("email", "Please enter email");
        }

        if (password == null || password.isEmpty()) {
            messages.put("password", "Please enter password");
        }

        if (messages.isEmpty()) {
            User user = userDAO.find(email, password);

            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("loggedin",true);
                
                session.setAttribute("userId", user.getId());
                
                
                return "redirect:/users/home";
            } else {
                messages.put("login", "Unknown login, please try again");
            }  
        }

        request.setAttribute("messages", messages);
        return "redirect:/?error";
        
    }
}
