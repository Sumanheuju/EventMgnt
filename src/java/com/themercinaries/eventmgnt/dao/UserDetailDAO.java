/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.eventmgnt.dao;

import com.themercinaries.eventmgnt.entity.UserDetail;
import java.util.List;


public interface UserDetailDAO {
    int insert(UserDetail ud);
    int update(UserDetail ud);
    int delete(int id);
    List<UserDetail> getAll();
    UserDetail getById(int id);
}
