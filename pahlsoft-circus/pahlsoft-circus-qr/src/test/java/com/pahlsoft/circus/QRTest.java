package com.pahlsoft.circus;

import com.pahlsoft.circus.builder.QRBuilder;

import org.testng.Assert;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;


public class QRTest
{
    QRBuilder qrBuilder;
    byte [] originalBytes;

    @BeforeTest
    private void setup () throws Exception {
        qrBuilder = new QRBuilder("Hello Circus People!!!");
        originalBytes = qrBuilder.convertToBytes();
   }

    @Test
    public void instantiateTheQRBuilderShouldPass() throws Exception {
        Assert.assertNotNull(qrBuilder);
    }

    @Test
    public void testBuildImageMethodShouldPass() throws Exception {
        Assert.assertNotNull(qrBuilder.convertToBytes());
    }

    @Test
    public void testThatSameStringsWillEqualEachOther() throws Exception {
       qrBuilder = new QRBuilder("Hello Circus People!!!");
       Assert.assertEquals(originalBytes, qrBuilder.convertToBytes());
    }

    @Test
    public void testThatDifferentStringsWillNotEqualEachOther() throws Exception {
        qrBuilder = new QRBuilder("Sup Circus Peeps!!!");
        Assert.assertNotEquals(originalBytes, qrBuilder.convertToBytes());
    }
}
