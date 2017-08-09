/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.themercinaries.eventmgnt.dao.impl;

import com.themercinaries.eventmgnt.dao.EventDAO;
import com.themercinaries.eventmgnt.entity.Event;
import com.themercinaries.eventmgnt.entity.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.GregorianCalendar;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository(value = "eDAO")
public class EventDAOImpl implements EventDAO{

    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    private Event mapData(ResultSet rs) throws SQLException{
        Event e = new Event();
        e.setId(rs.getInt("id"));
        e.setEventName(rs.getString("event_name"));
        e.setUserId(rs.getInt("user_id"));
        e.setEventImage(rs.getString("event_image"));
        e.setEventLocation(rs.getString("event_location"));
        e.setEventDateTime(rs.getDate("event_date_time"));
        e.setEventDescription(rs.getString("event_description"));
        e.setEventPrice(rs.getDouble("event_price"));
            e.setAddedDate(rs.getTimestamp("added_date"));
        e.setModifiedDate(rs.getDate("modified_date"));
        e.setStatus(rs.getBoolean("status"));
        
        return e;
    }
    
    @Override
    public int insert(Event e) {
        String sql = "INSERT INTO tbl_events (event_name, user_id, event_image,event_location, event_date_time, event_description,event_price,status) VALUES (?,?,?,?,?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{
            e.getEventName(),e.getUserId(),e.getEventImage(),e.getEventLocation(),e.getEventDateTime(),e.getEventDescription(),e.getEventPrice(),e.isStatus()
        });
                
    }

    @Override
    public int update(Event e) {
        String sql = "UPDATE tbl_events SET event_name=?, user_id=?, event_image=?,event_location=?, event_date_time=?, event_description=?,event_price=?,status=? where id=?";
        return jdbcTemplate.update(sql, new Object[]{
            e.getEventName(),e.getUserId(),e.getEventImage(),e.getEventLocation(),e.getEventDateTime(),e.getEventDescription(),e.getEventPrice(),e.isStatus(),e.getId()
        });
    }

    @Override
    public int delete(int id) {
      String sql = "DELETE From tbl_events where id=?";
      return jdbcTemplate.update(sql, new Object[]{id});
    }

    @Override
    public List<Event> getAll() {
        String sql ="SELECT * from tbl_events";
        return jdbcTemplate.query(sql, new RowMapper<Event>() {
            @Override
            public Event mapRow(ResultSet rs, int i) throws SQLException {
                return mapData(rs);
            }
        });
    }
    
    @Override
    public Event getById(int id) {
        String sql ="SELECT * from tbl_events where user_id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new RowMapper<Event>() {
            @Override
            public Event mapRow(ResultSet rs, int i) throws SQLException {
                return mapData(rs);
            }
        });
    }

    @Override
    public List<Event> getEach(int id) {
        String sql ="SELECT * from tbl_events where user_id=?";
        return jdbcTemplate.query(sql, new Object[]{id}, new RowMapper<Event>() {
            @Override
            public Event mapRow(ResultSet rs, int i) throws SQLException {
                return mapData(rs);
            }
        });
    }
    
}
