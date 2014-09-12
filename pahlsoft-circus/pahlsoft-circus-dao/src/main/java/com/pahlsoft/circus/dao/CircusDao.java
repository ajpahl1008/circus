package com.pahlsoft.circus.dao;

import com.pahlsoft.circus.jpa.AttendeeEntity;
import com.pahlsoft.circus.jpa.InterestsEntity;
import com.pahlsoft.circus.jpa.SkillsEntity;

import java.util.List;


public interface CircusDao {
    // Specific
    public List<AttendeeEntity> getAttendeeInfo(int attendeeId);
    public List<InterestsEntity> getAttendeeInterests(int attendeeId);
    public List<SkillsEntity> getAttendeeSkills(int attendeeId);

    // All Items
    public List<AttendeeEntity> getAllAttendees();
    public List<InterestsEntity> getAllInterests();
    public List<SkillsEntity> getAllSkills();

    // Inserters
    public AttendeeEntity addAttendee(AttendeeEntity attendee);
    public InterestsEntity addInterests(InterestsEntity interest);
    public SkillsEntity addSkills(SkillsEntity skill);

}
