package com.pahlsoft.circus;

import com.pahlsoft.circus.dao.CircusDao;
import com.pahlsoft.circus.jpa.AttendeeEntity;
import com.pahlsoft.circus.jpa.InterestsEntity;
import com.pahlsoft.circus.jpa.SkillsEntity;
import org.apache.log4j.Logger;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import java.util.List;


@Path("/json/attendee")
@Stateless
public class CircusService {

    public Logger LOG = Logger.getLogger(CircusService.class);

    @EJB
    private CircusDao circusDao;

    @GET
    @Path("/get/info")
    @Produces("text/html")
    public Response getBadInfoUrl() {
        LOG.info("Bad Request");
        String output = "No Enough Information Specified.";
        return Response.status(400).entity(output).build();
    }

    @GET
    @Path("/get/interests")
    @Produces("text/html")
    public Response getBadInterestsUrl() {
        LOG.info("INTERESTS: Not Enough Information");
        String output = "No Enough Information Specified.";
        return Response.status(400).entity(output).build();
    }

    @GET
    @Path("/get/skills")
    @Produces("text/html")
    public Response getBadSkillsUrl() {
        LOG.info("SKILLS: Not Enough Information");
        String output = "No Enough Information Specified.";
        return Response.status(400).entity(output).build();
    }

    @GET
    @Path("/get/info/{param}")
    @Produces("application/json")
    public Response getAttendee(@PathParam("param") int attendeeId) {
        LOG.info("ATTENDEE: Getting info for Attendee: " + attendeeId);
        List<AttendeeEntity> attendeeEntity = circusDao.getAttendeeInfo(attendeeId);
        return Response.status(200).entity(attendeeEntity).build();
    }

    @GET
    @Path("/get/info/all")
    @Produces("application/json")
    public Response getAttendeeAll() {
        LOG.info("ATTENDEE: Getting All Attendee Info");
        List<AttendeeEntity> attendeeEntities = circusDao.getAllAttendees();
        return Response.status(200).entity(attendeeEntities).build();
    }

    @GET
    @Path("/get/interests/all")
    @Produces("application/json")
    public Response getAllInterests() {
        LOG.info("INTERESTS: Getting All Interest Info");
        List<InterestsEntity> interestsEntities =  circusDao.getAllInterests();
        return Response.status(200).entity(interestsEntities).build();
    }

    @GET
    @Path("/get/interests/{param}")
    @Produces("application/json")
    public Response getAttendeeInterests(@PathParam("param") int attendeeId) {
        LOG.info("INTERESTS: Getting Interests for Attendee: " + attendeeId);
        List<InterestsEntity> attendeeInterestsEntities =  circusDao.getAttendeeInterests(attendeeId);
        return Response.status(200).entity(attendeeInterestsEntities).build();
    }

    @GET
    @Path("/get/skills/all")
    @Produces("application/json")
    public Response getAllSkills() {
        LOG.info("SKILLS: Getting All Skills Info");
        List<SkillsEntity> skillsEntities =  circusDao.getAllSkills();
        return Response.status(200).entity(skillsEntities).build();
    }

    @GET
    @Path("/get/skills/{param}")
    @Produces("application/json")
    public Response getAttendeeSkills(@PathParam("param") int attendeeId) {
        LOG.info("SKILLS: Getting Skills for Attendee: " + attendeeId);
        List<SkillsEntity> attendeeSkillsEntities =  circusDao.getAttendeeSkills(attendeeId);
        return Response.status(200).entity(attendeeSkillsEntities).build();
    }
    @POST
    @Path("/post/attendee")
    @Consumes("application/json")
    public Response createAttendeeInJSON(AttendeeEntity attendee) {
        LOG.info("ATTENDEE: Creating Attendee For:  " + attendee.getFirstName() + " " + attendee.getLastName());
       AttendeeEntity result = circusDao.addAttendee(attendee);
        return Response.status(201).entity(result).build();
    }

    @POST
    @Path("/post/skills")
    @Consumes("application/json")
    public Response createSkillInJSON(SkillsEntity skill) {
        LOG.info("SKILLS: Creating New Skill: " + skill.getSkill());
        SkillsEntity result = circusDao.addSkills(skill);
        return Response.status(201).entity(result).build();
    }

    @POST
    @Path("/post/interests")
    @Consumes("application/json")
    public Response createInterestInJSON(InterestsEntity interest) {
        LOG.info("INTERESTS: Creating New Interest: " + interest.getInterestDescription());
        InterestsEntity result = circusDao.addInterests(interest);
        if (interest == null) return Response.status(405).entity(result).build();
        return Response.status(201).entity(result).build();
    }

}
