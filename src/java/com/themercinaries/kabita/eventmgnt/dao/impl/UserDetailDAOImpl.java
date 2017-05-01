/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.kabita.eventmgnt.dao.impl;


import com.themercinaries.kabita.eventmgnt.dao.UserDetailDAO;
import com.themercinaries.kabita.eventmgnt.entity.UserDetail;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository(value = "udDAO")
public class UserDetailDAOImpl implements UserDetailDAO{
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    private UserDetail mapData(ResultSet rs) throws SQLException{
        
                UserDetail ud = new UserDetail();
                
                ud.setUserId(rs.getInt("user_id"));
                ud.setFirstName(rs.getString("first_name"));
                ud.setLastName(rs.getString("last_name"));
                ud.setContactNo(rs.getString("contact_no"));
                ud.setProfileDescription(rs.getString("profile_description"));
                ud.setProfilePicture("profile_picture");
                ud.setLinkedin(rs.getString("linkedin"));
                ud.setGithub(rs.getString("github"));
                ud.setAddedDate(rs.getTimestamp("added_date"));
                ud.setModifiedDate(rs.getDate("modified_date"));
                ud.setStatus(rs.getBoolean("status"));
                
                
                return ud;
    }
    
    @Override
    public int insert(UserDetail ud) {
        
        String sql ="INSERT INTO tbl_users_profile (user_id, first_name, last_name, contact_no,profile_description,linkedin, github,status, profile_picture) VALUES (?,?,?,?,?,?,?,?,?)";
       return jdbcTemplate.update(sql, new Object[]{
           ud.getUserId(),ud.getFirstName(),ud.getLastName(),ud.getContactNo(),ud.getProfileDescription(),ud.getLinkedin(),ud.getGithub(),ud.isStatus(),ud.getProfilePicture()
       });
    }

    @Override
    public int update(UserDetail ud) {
        String sql ="UPDATE tbl_users_profile SET first_name=?, last_name=?,contact_no=?,profile_description=?, linkedin=?, github=?,status=?, profile_picture=? where user_id=?";
        return jdbcTemplate.update(sql, new Object[]{
            ud.getFirstName(),ud.getLastName(),ud.getContactNo(),ud.getProfileDescription(),ud.getLinkedin(),ud.getGithub(),ud.isStatus(),ud.getProfilePicture(),ud.getUserId()
       
        });
    }

    @Override
    public int delete(int id) {
        String sql = "DELETE From tbl_users_profile where user_id=?";
        return jdbcTemplate.update(sql, new Object[]{id});
    }

    @Override
    public List<UserDetail> getAll() {
        String sql = "SELECT * from tbl_users_profile";
        return jdbcTemplate.query(sql, new RowMapper<UserDetail>() {
            @Override
            public UserDetail mapRow(ResultSet rs, int i) throws SQLException {
                return mapData(rs);
            }
        });
    }

    @Override
    public UserDetail getById(int id) {
        String sql ="SELECT * from tbl_users_profile where user_id =?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new RowMapper<UserDetail>() {
            @Override
            public UserDetail mapRow(ResultSet rs, int i) throws SQLException {
                return mapData(rs);
            }
        });
    }
    
}
