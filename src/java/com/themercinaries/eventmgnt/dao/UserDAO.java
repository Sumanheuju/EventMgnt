/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.eventmgnt.dao;

import com.themercinaries.eventmgnt.entity.User;
import java.util.List;


public interface UserDAO {
    int insert(User u);
    int update(User u);
    int delete(int id);
    List<User> getAll();
    User getById(int id);
    
    User find(String email, String password);
}
