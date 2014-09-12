package com.pahlsoft.circus.dao;

import com.pahlsoft.circus.jpa.AttendeeEntity;
import com.pahlsoft.circus.jpa.InterestsEntity;
import com.pahlsoft.circus.jpa.SkillsEntity;

import java.util.List;


public interface CircusDao {
    // Specific
    public List<AttendeeEntity> getAttendeeInfo(int attendeeId);
    public List<String> getAttendeeSkills(int attendeeId);
    public List<String> getAttendeeInterests(int attendeeId);

    // All Items
    public List<AttendeeEntity> getAllAttendees();
    public List<InterestsEntity> getAllInterests();
    public List<SkillsEntity> getAllSkills();
}
