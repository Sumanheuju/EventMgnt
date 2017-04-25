/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.controller.admin;

import com.themercinaries.kabita.eventmgnt.dao.UserDAO;
import com.themercinaries.kabita.eventmgnt.dao.UserDetailDAO;
import com.themercinaries.kabita.eventmgnt.entity.User;
import com.themercinaries.kabita.eventmgnt.entity.UserDetail;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author sumanheuju
 */

@Controller
@RequestMapping(value = "/admin/user")
public class UserAdminController {
    @Autowired
    private UserDAO uDAO;
    
    @Autowired
    private UserDetailDAO udDAO;
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("users", uDAO.getAll());
        return "/admin/user/users";
    }
    
    @RequestMapping(value = "/show" ,method = RequestMethod.GET)
    public String show(Model model){
        udDAO.getAll().clear();
        model.addAttribute("userDetail", udDAO.getAll());
        return "admin/user/userDetail";
    }
    
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") int id, Model model){
        model.addAttribute("user", uDAO.getById(id));
        return "/admin/user/edituser";
    }
    
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id){
        uDAO.delete(id);
        return "redirect:/admin/user";
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(
                       @RequestParam("username") String username,
                       @RequestParam("email") String email,
                       @RequestParam("password") String password,
                       @RequestParam("userId") int id){
        
        User u = new User();
        
        
        u.setUsername(username);
        u.setEmail(email);
        u.setPassword(password);
        u.setId(id);
            
        uDAO.update(u);

        return "redirect:/admin/user";
    }


}
