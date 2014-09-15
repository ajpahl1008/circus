package com.pahlsoft.circus;


import com.pahlsoft.circus.jpa.AttendeeEntity;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

import com.sun.jersey.api.json.JSONConfiguration;
import org.apache.commons.io.IOUtils;
import org.testng.TestNG;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import javax.ws.rs.core.MediaType;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class WebServiceTest extends TestNG
{
    Client client;
    ClientConfig clientConfig;
    WebResource webResource;
    ClientResponse clientResponse;
    byte[] qrCode;
    byte[] resume;


    @BeforeTest
    private void init() throws IOException {
        clientConfig = new DefaultClientConfig();
        clientConfig.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);
        client = Client.create(clientConfig);
        webResource = client.resource("http://localhost:8080/pahlsoft-circus-ws/json/attendee/post/attendee");
        resume = readFile(new File("/Users/aj/Development/GitHub/circus/pahlsoft-circus/pahlsoft-circus-ws/src/test/resources/Resume.docx"));
        qrCode = readFile(new File("/Users/aj/Development/GitHub/circus/pahlsoft-circus/pahlsoft-circus-ws/src/test/resources/QR_Code_Example.svg"));

    }

    private byte[] readFile(File file) throws IOException {
        System.out.println("MY Cannonical: " + file.getCanonicalPath());
        System.out.println("MY Absolute: " + file.getAbsolutePath());
        FileInputStream fis = new FileInputStream(file);
        return IOUtils.toByteArray(fis);
    }

    @Test
    public void testAttendeeEntityCreation() {
        AttendeeEntity attendeeEntity = new AttendeeEntity();
        //attendeeEntity.setAttendeeId();  // Not in Use at the moment.
        attendeeEntity.setFirstName("Steve");
        attendeeEntity.setLastName("Douchebag");
        attendeeEntity.setEmailAddress("stevedbag@gmail.com");
        attendeeEntity.setShortDesc("I'm a total jerk, you should hire me");
        attendeeEntity.setTitle("VP");
        attendeeEntity.setQrcode(qrCode);
        attendeeEntity.setResume(resume);

        clientResponse = webResource.accept(MediaType.APPLICATION_JSON_TYPE).type(MediaType.APPLICATION_JSON_TYPE)
                .post(ClientResponse.class, attendeeEntity);

//        String output = clientResponse.getEntity(String.class);
//        System.out.println("Client Output: " + output);
    }

   
}



