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
    public List<String> getAttendeeSkills(int attendeeId) {
        Query query = em.createQuery("select a.skill from AttendeeSkillsEntity a where a.attendeeId = " + attendeeId);
        return (List<String>) query.getResultList();
    }

    @Override
    public List<String> getAttendeeInterests(int attendeeId) {
        Query query = em.createQuery("select a.interestDescription from AttendeeInterestsEntity a where a.attendeeId =" + attendeeId);
        return (List<String>) query.getResultList();
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
}
