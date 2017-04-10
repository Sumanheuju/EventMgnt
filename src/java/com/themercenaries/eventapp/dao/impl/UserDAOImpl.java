/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercenaries.eventapp.dao.impl;

import com.themercenaries.eventapp.dao.UserDAO;
import com.themercenaries.eventapp.entity.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author sumanheuju
 */
@Repository
public class UserDAOImpl implements UserDAO{
    
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    @Override
    public int insert(User u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(User u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<User> getAll() {
        String sql ="Select * from tbl_users";
        return jdbcTemplate.query(sql, new RowMapper<User>() {
            @Override
            public User mapRow(ResultSet rs, int i) throws SQLException {
                User usr = new User();
                
                usr.setId(rs.getInt("id"));
                usr.setUsername(rs.getString("username"));
                usr.setEmail(rs.getString("email"));
                usr.setPassword(rs.getString("password"));
                
                return usr;
            }
        });
    }

    @Override
    public User getByID(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
