package com.pahlsoft.circus;

import com.pahlsoft.circus.dao.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/json/attendee")
public class CircusService {


    EntityManagerFactory emf;
    EntityManager entityManager;

        @GET
        @Path("/get/info")
        @Produces("text/html")
        public Response getBadInfoUrl() {
            String output = "No Enough Information Specified.";
            return Response.status(400).entity(output).build();
            }

        @GET
        @Path("/get/interests")
        @Produces("text/html")
        public Response getBadInterestsUrl() {
            String output = "No Enough Information Specified.";
            return Response.status(400).entity(output).build();
        }

        @GET
        @Path("/get/skills")
        @Produces("text/html")
        public Response getBadSkillsUrl() {
            String output = "No Enough Information Specified.";
            return Response.status(400).entity(output).build();
        }

        @GET
        @Path("/get/info/{param}")
        @Produces("application/json")
        public Response getAttendee(@PathParam("param") int attendeeId) {
            emf = Persistence.createEntityManagerFactory("PersistenceUnit");
            entityManager = emf.createEntityManager();
            entityManager.getTransaction().begin();

            Query query = entityManager.createQuery("select a from AttendeeEntity a where a.attendeeId  = " + attendeeId);
            AttendeeEntity attendeeEntity = (AttendeeEntity) query.getSingleResult();

            return Response.status(200).entity(attendeeEntity).build();
        }

        @GET
        @Path("/get/info/all")
        @Produces("application/json")
        public Response getAttendeeAll() {
            emf = Persistence.createEntityManagerFactory("PersistenceUnit");
            entityManager = emf.createEntityManager();
            entityManager.getTransaction().begin();

            Query query = entityManager.createQuery("select a from AttendeeEntity a ");
            List<AttendeeEntity> attendeeEntities =  query.getResultList();

            return Response.status(200).entity(attendeeEntities).build();
        }

        @GET
        @Path("/get/interests/all")
        @Produces("application/json")
        public Response getAllInterests() {
            emf = Persistence.createEntityManagerFactory("PersistenceUnit");
            entityManager = emf.createEntityManager();
            entityManager.getTransaction().begin();

            Query query = entityManager.createQuery("select a from InterestsEntity a ");
            List<InterestsEntity> interestsEntities =  query.getResultList();
            return Response.status(200).entity(interestsEntities).build();
        }

        @GET
        @Path("/get/interests/{param}")
        @Produces("application/json")
        public Response getAttendeeInterests(@PathParam("param") int attendeeId) {
            emf = Persistence.createEntityManagerFactory("PersistenceUnit");
            entityManager = emf.createEntityManager();
            entityManager.getTransaction().begin();

            Query query = entityManager.createQuery("select a.interestDescription from AttendeeInterestsEntity a where a.attendeeId =" + attendeeId);
            List<String> attendeeInterestsEntities =  query.getResultList();
            return Response.status(200).entity(attendeeInterestsEntities).build();
        }

        @GET
        @Path("/get/skills/all")
        @Produces("application/json")
        public Response getAllSkills() {
            emf = Persistence.createEntityManagerFactory("PersistenceUnit");
            entityManager = emf.createEntityManager();
            entityManager.getTransaction().begin();

            Query query = entityManager.createQuery("select a from SkillsEntity a ");
            List<SkillsEntity> skillsEntities =  query.getResultList();
            return Response.status(200).entity(skillsEntities).build();
        }

        @GET
        @Path("/get/skills/{param}")
        @Produces("application/json")
        public Response getAttendeeSkills(@PathParam("param") int attendeeId) {
            emf = Persistence.createEntityManagerFactory("PersistenceUnit");
            entityManager = emf.createEntityManager();
            entityManager.getTransaction().begin();
            Query query = entityManager.createQuery("select a.skill from AttendeeSkillsEntity a where a.attendeeId = " + attendeeId);
            List<String> attendeeSkillsEntities =  query.getResultList();
            return Response.status(200).entity(attendeeSkillsEntities).build();
        }
        @POST
        @Path("/post")
        @Consumes("application/json")
        public Response createProductInJSON(AttendeeEntity product) {
            String result = "Product created : " + product;
            return Response.status(201).entity(result).build();
        }

}
