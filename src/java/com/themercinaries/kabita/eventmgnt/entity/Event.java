/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.entity;

import java.util.Date;

/**
 *
 * @author sumanheuju
 */
public class Event {
    private int id;
    private String eventName,eventLocation, eventDescription;
    private int userId;
    private String eventImage;
    private Date eventDateTime;
    private double eventPrice;
    private Date addedDate, modifiedDate;
    private boolean status;

    public Event() {
    }

    public Event(int id, String eventName, String eventLocation, String eventDescription, int userId, String eventImage, Date eventDateTime, double eventPrice, Date addedDate, Date modifiedDate, boolean status) {
        this.id = id;
        this.eventName = eventName;
        this.eventLocation = eventLocation;
        this.eventDescription = eventDescription;
        this.userId = userId;
        this.eventImage = eventImage;
        this.eventDateTime = eventDateTime;
        this.eventPrice = eventPrice;
        this.addedDate = addedDate;
        this.modifiedDate = modifiedDate;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getEventLocation() {
        return eventLocation;
    }

    public void setEventLocation(String eventLocation) {
        this.eventLocation = eventLocation;
    }

    public String getEventDescription() {
        return eventDescription;
    }

    public void setEventDescription(String eventDescription) {
        this.eventDescription = eventDescription;
    }

    public int getUser() {
        return userId;
    }

    public void setUser(int userId) {
        this.userId = userId;
    }

    public String getEventImage() {
        return eventImage;
    }

    public void setEventImage(String eventImage) {
        this.eventImage = eventImage;
    }

    public Date getEventDateTime() {
        return eventDateTime;
    }

    public void setEventDateTime(Date eventDateTime) {
        this.eventDateTime = eventDateTime;
    }

    public double getEventPrice() {
        return eventPrice;
    }

    public void setEventPrice(double eventPrice) {
        this.eventPrice = eventPrice;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
