/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.eventmgnt.controller.user;

import com.themercinaries.eventmgnt.dao.EventDAO;
import com.themercinaries.eventmgnt.dao.UserDetailDAO;
import com.themercinaries.eventmgnt.entity.Event;
import java.io.File;
import java.sql.Date;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author sumanheuju
 */

@Controller
@RequestMapping(value = "/events")
public class EventController {
    
    @Autowired
    private UserDetailDAO udDAO;
    @Autowired
    private EventDAO eDAO;

    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String createEvent(Model model) {
        
        model.addAttribute("event", new Event());
        return "/event/create";
    }
    
    @RequestMapping(value = "myevents", method = RequestMethod.GET)
    public String showRelatedEvents(Model model, ServletRequest request){
        HttpServletRequest req = (HttpServletRequest)request;
        HttpSession session = req.getSession();
        
        model.addAttribute("event", eDAO.getEach((int)session.getAttribute("userId")));
        model.addAttribute("userDetail", udDAO.getById((int) session.getAttribute("userId")));
        return "/event/myEvents";
    }
    @RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
    public String editRelatedEvents(Model model, @PathVariable("id") int id){

        model.addAttribute("event", eDAO.getEach(id));
        return "/event/edit";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveEvent(@RequestParam(value = "eventName") String eventName,
            @RequestParam(value = "eventLocation") String eventLocation,
            @RequestParam(value = "eventDateTime") Date eventDateTime,
            @RequestParam(value = "eventDescription") String eventDescription,
            @RequestParam(value = "eventPrice") double eventPrice,
            @RequestParam(value = "status") boolean status,
            @RequestParam(value = "eventImage") MultipartFile multipartFile,
            
            
            ServletRequest request) {
        
        System.out.println(">>>>>>>>>>?>>>>>>>>>One");
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();

        String rootDirectory = session.getServletContext().getRealPath("/");

        Event ev = new Event();

        ev.setEventName(eventName);
        System.out.println(">>>>>>>>>>?>>>>>>>>>two");
        ev.setUserId((int) session.getAttribute("userId"));
        ev.setEventLocation(eventLocation);
        ev.setEventDateTime(eventDateTime);
        ev.setEventDescription(eventDescription);
        ev.setEventPrice(eventPrice);
        ev.setStatus(status);
System.out.println(">>>>>>>>>>?>>>>>>>>>three");
        if (ev.getId() == 0) {
            ev = saveOrUpdateImage(multipartFile, ev, rootDirectory);
            eDAO.insert(ev);
        } else {
            ev = saveOrUpdateImage(multipartFile, ev, rootDirectory);
            eDAO.update(ev);
        }

        return "redirect:/users/home";
    }

    private Event saveOrUpdateImage(MultipartFile multipartFile, Event ev, String rootDirectory) {
        try {
            String finalPath = rootDirectory + "WEB-INF/assets/resources/images/eventsimages/";
            System.out.println(">>>>>>>>>>?>>>>>>>>>" + finalPath);
            // File Directory for the Images
            File eventImageDir = new File(finalPath);

            if (!eventImageDir.exists()) {
                eventImageDir.mkdir();
            }

            String newFileName = ev.getEventName();
            File eventPic = new File(eventImageDir + "/" + newFileName + ".jpg");
            eventPic.createNewFile();
            multipartFile.transferTo(eventPic);
            
            ev.setEventImage(newFileName);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        return ev;

    }

}
