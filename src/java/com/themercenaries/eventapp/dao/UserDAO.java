/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercenaries.eventapp.dao;

import com.themercenaries.eventapp.entity.User;
import java.util.List;

/**
 *
 * @author sumanheuju
 */
public interface UserDAO {
    int insert(User u);
    int update(User u);
    int delete(int id);
    List<User> getAll();
    User getByID(int id);
}
