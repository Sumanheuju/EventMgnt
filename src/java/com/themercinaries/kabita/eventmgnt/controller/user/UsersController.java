/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.controller.user;

import com.themercinaries.kabita.eventmgnt.dao.UserDAO;
import com.themercinaries.kabita.eventmgnt.dao.UserDetailDAO;
import com.themercinaries.kabita.eventmgnt.entity.UserDetail;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author sumanheuju
 */
@Controller
@RequestMapping(value = "/users")
public class UsersController {

    @Autowired
    UserDAO uDAO;

    @Autowired
    UserDetailDAO udDAO;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String show(Model model, ServletRequest request, UserDetail ud) {
//        HttpServletRequest req = (HttpServletRequest) request;
//        req.getSession().getAttribute("userId");
//        System.out.println(">>>>>>>>>>>>>>>>>>>" + id);
//        model.addAttribute("userDetail", udDAO.getById(id));
        //System.out.println("UserIDmmmm>>>>>>>>>>"+session.getAttribute("id"));
        
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        
        
        
        
        
       try{
        if (udDAO.getById((int)session.getAttribute("userId")).getUserId() == ud.getUserId()) {
            System.out.println("NO Eroor ");
        }
       }catch(EmptyResultDataAccessException emp){
           ud.setUserId((int) session.getAttribute("userId"));
           udDAO.insert(ud);
       }
       model.addAttribute("userDetail", udDAO.getById((int) session.getAttribute("userId")));
       model.addAttribute("user", uDAO.getById((int) session.getAttribute("userId")));
        return "users/home";
    }

    @RequestMapping(value = "/addDetails", method = RequestMethod.GET)
    public String addUserDetail(Model model, ServletRequest request) {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
//      
// 
        model.addAttribute("userdetail", udDAO.getById((int) session.getAttribute("userId")));
        return "/users/addDetails";

    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String saveUserDetail(@RequestParam(value = "userId") int paramId,
            @RequestParam("firstName") String firstName,
            @RequestParam("lastName") String lastName,
            @RequestParam("contactNo") String contactNo,
            @RequestParam("profileDescription") String profileDescription,
            @RequestParam("linkedin") String linkedin,
            @RequestParam("github") String github,
            @RequestParam("status") boolean status,
            @RequestParam("profilePicture") MultipartFile multipartFile,
            ServletRequest request) throws SQLException, IOException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        String rootDirectory = session.getServletContext().getRealPath("/");
        
        UserDetail ud = new UserDetail();

//        if (StringUtils.hasLength(paramId)) {
//            ud = udDAO.getById(Integer.parseInt(paramId));
//        } else {
//            ud = new UserDetail();
//        }
        ud.setUserId((int) session.getAttribute("userId"));
        ud.setFirstName(firstName);
        ud.setLastName(lastName);
        ud.setContactNo(contactNo);
        ud.setProfileDescription(profileDescription);
        ud.setLinkedin(linkedin);
        ud.setGithub(github);
        ud.setStatus(status);

        ud = saveOrUpdateImage(multipartFile, ud, rootDirectory);
        udDAO.update(ud);

        return "redirect:/users/home";

    }

    private UserDetail saveOrUpdateImage(MultipartFile multipartFile, UserDetail ud, String rootDirectory) {
        try {
            String finalPath = rootDirectory + "WEB-INF/assets/resources/images/profilepics/";
            System.out.println(">>>>>>>>>>?>>>>>>>>>" + finalPath);
            // File Directory for the Images
            File userImageDir = new File(finalPath);

            if (!userImageDir.exists()) {
                userImageDir.mkdir();
            }
            String newFileName = String.valueOf(ud.getUserId());
            File profilePic = new File(userImageDir, "/" + newFileName + ".jpg");

            profilePic.createNewFile();
            multipartFile.transferTo(profilePic);
            ud.setProfilePicture(newFileName);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return ud;
    }

}
