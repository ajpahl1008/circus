package com.pahlsoft.circus.dao.impl;


import com.pahlsoft.circus.dao.CircusDao;
import com.pahlsoft.circus.jpa.AttendeeEntity;
import com.pahlsoft.circus.jpa.InterestsEntity;
import com.pahlsoft.circus.jpa.SkillsEntity;


import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Stateless
@TransactionAttribute(TransactionAttributeType.REQUIRED)
public class CircusDaoImpl implements CircusDao {

    @PersistenceContext(unitName = "persistenceUnit")
    private EntityManager em;

    @Override
    public List<AttendeeEntity> getAttendeeInfo(int attendeeId) {
        Query query = em.createQuery("select a from AttendeeEntity a where a.attendeeId  = " + attendeeId);
        return (List<AttendeeEntity>) query.getResultList();
    }

    @Override
    public List<SkillsEntity> getAttendeeSkills(int attendeeId) {
        Query query = em.createQuery("select a.skill from AttendeeSkillsEntity a where a.attendeeId = " + attendeeId);
        return (List<SkillsEntity>) query.getResultList();
    }

    @Override
    public List<InterestsEntity> getAttendeeInterests(int attendeeId) {
        Query query = em.createQuery("select a.interestDescription from AttendeeInterestsEntity a where a.attendeeId =" + attendeeId);
        return (List<InterestsEntity>) query.getResultList();
    }

    @Override
    public List<AttendeeEntity> getAllAttendees() {
        Query query = em.createQuery("select a from AttendeeEntity a ");
        return (List<AttendeeEntity>) query.getResultList();
    }

    @Override
    public List<InterestsEntity> getAllInterests() {
        Query query = em.createQuery("select a from InterestsEntity a ");
        return (List<InterestsEntity>) query.getResultList();
    }

    @Override
    public List<SkillsEntity> getAllSkills() {
        Query query = em.createQuery("select a from SkillsEntity a ");
        return (List<SkillsEntity>) query.getResultList();
    }

    @Override
    public AttendeeEntity addAttendee(AttendeeEntity attendee) {
       em.persist(attendee);
       return attendee;
   }

    @Override
    public InterestsEntity addInterests(InterestsEntity interest) {
       em.persist(interest);
        return interest;
    }

    @Override
    public SkillsEntity addSkills(SkillsEntity skill) {
        em.persist(skill);
        return skill;
    }


}
