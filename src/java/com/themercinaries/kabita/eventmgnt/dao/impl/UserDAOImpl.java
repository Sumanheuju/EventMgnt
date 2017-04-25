/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.dao.impl;

import com.themercinaries.kabita.eventmgnt.dao.UserDAO;
import com.themercinaries.kabita.eventmgnt.entity.User;
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
@Repository(value = "uDAO")
public class UserDAOImpl implements UserDAO{
    
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    @Override
    public int insert(User u) {
        String sql ="INSERT INTO tbl_users (username, email, password) VALUES (?,?,?)";
       return jdbcTemplate.update(sql, new Object[]{
           u.getUsername(),u.getEmail(),u.getPassword()
       });
    }

    @Override
    public int update(User u) {
       
        String sql = "UPDATE tbl_users SET username=?, email=?, password=? WHERE id=?";
         
        return jdbcTemplate.update(sql, new Object[]{
           u.getUsername(),u.getEmail(),u.getPassword(),u.getId()
        });
        
    }

    @Override
    public int delete(int id) {
        String sql = "DELETE FROM tbl_users WHERE id=?";
        return jdbcTemplate.update(sql, new Object[]{id});
        
    }

    @Override
    public List<User> getAll() {
        String sql = "SELECT * from tbl_users";
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
    public User getById(int id) {
        String sql = "SELECT * from tbl_users where id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, (ResultSet rs, int i) -> {
            User usr = new User();
            
            usr.setId(rs.getInt("id"));
            usr.setUsername(rs.getString("username"));
            usr.setEmail(rs.getString("email"));
            usr.setPassword(rs.getString("password"));
            
            return usr;
        });
    }

    @Override
    public User find(String email, String password) {
        for(User user : getAll()){
            if(email.equals(user.getEmail()) && password.equals(user.getPassword())){
                return user;
            }
        }
        return null;
    }
    
}
