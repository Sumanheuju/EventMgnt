/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.dao;

import com.themercinaries.kabita.eventmgnt.entity.Event;
import java.util.List;


public interface EventDAO {
    int insert(Event e);
    int update(Event e);
    int delete(int id);
    List<Event> getAll();
    List<Event> getEach(int id);
    Event getById(int id);
}
