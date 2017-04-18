/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.controller;

import com.themercinaries.kabita.eventmgnt.dao.UserDAO;
import com.themercinaries.kabita.eventmgnt.entity.User;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    
//    @RequestMapping(value = "/login", method = RequestMethod.GET)
//    public String login(){
//        
//        return "login";
//    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String chkLogin(HttpServletRequest request){
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
//        if(email.equals("super@gmail.com") && password.equals("man")){
//            request.getSession().setAttribute("loggedin", true);
//            
//            return "redirect:/admin/user/show";
//        }else{
//            return "redirect:/login?error";
//        }
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
                request.getSession().setAttribute("loggedin", true);
                return "redirect:/users/home";
            } else {
                messages.put("login", "Unknown login, please try again");
            }  
        }

        request.setAttribute("messages", messages);
        return "redirect:/?error";
        
    }
}
