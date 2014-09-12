package com.pahlsoft.circus;


import com.pahlsoft.circus.jpa.AttendeeEntity;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

import com.sun.jersey.api.json.JSONConfiguration;
import org.apache.openjpa.lib.meta.SourceTracker;
import org.testng.TestNG;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import javax.ws.rs.core.MediaType;

public class AppTest extends TestNG
{
    Client client;
    ClientConfig clientConfig;
    WebResource webResource;
    ClientResponse clientResponse;

    @BeforeTest
    private void init() {
        clientConfig = new DefaultClientConfig();
        clientConfig.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);
        client = Client.create(clientConfig);
        webResource = client.resource("http://localhost:8080/pahlsoft-circus-ws/json/attendee/post/attendee");

    }

    @Test
    public void testAttendeeEntityCreation() {
        AttendeeEntity attendeeEntity = new AttendeeEntity();
        //attendeeEntity.setAttendeeId();
        attendeeEntity.setFirstName("Steve");
        attendeeEntity.setLastName("Douchebag");
        attendeeEntity.setEmailAddress("stevedbag@gmail.com");
        attendeeEntity.setShortDesc("I'm a total jerk, you should hire me");
        attendeeEntity.setTitle("VP");
        attendeeEntity.setQrcode(null);
        attendeeEntity.setResume(null);

        clientResponse = webResource.accept(MediaType.APPLICATION_JSON_TYPE).type(MediaType.APPLICATION_JSON_TYPE)
                .post(ClientResponse.class, attendeeEntity);

        String output = clientResponse.getEntity(String.class);
        System.out.println("Client Output: " + output);
    }

   
}



