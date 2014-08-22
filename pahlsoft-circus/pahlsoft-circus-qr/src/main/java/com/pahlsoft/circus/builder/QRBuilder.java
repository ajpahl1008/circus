package com.pahlsoft.circus.builder;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import org.apache.log4j.Logger;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Hashtable;

public class QRBuilder {
    String conversionString;

    public Logger LOG = Logger.getLogger(QRBuilder.class);

    public QRBuilder(String conversionString) throws WriterException {
        this.conversionString = conversionString;
    }

   //@Profiled(tag = "byteConverter") //TODO: Add the aspectJ profiling back.
   public byte[] convertToBytes() throws Exception {
       int size = 125;
       String fileType = "png";
       ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
       try {
           Hashtable<EncodeHintType, ErrorCorrectionLevel> hintMap = new Hashtable<EncodeHintType, ErrorCorrectionLevel>();
           hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
           QRCodeWriter qrCodeWriter = new QRCodeWriter();
           BitMatrix byteMatrix = qrCodeWriter.encode(conversionString, BarcodeFormat.QR_CODE, size, size, hintMap);
           int imageSize = byteMatrix.getWidth();
           BufferedImage image = new BufferedImage(imageSize, imageSize,BufferedImage.TYPE_INT_RGB);
           image.createGraphics();

           Graphics2D graphics = (Graphics2D) image.getGraphics();
           graphics.setColor(Color.WHITE);
           graphics.fillRect(0, 0, imageSize, imageSize);
           graphics.setColor(Color.BLACK);

           for (int i = 0; i < imageSize; i++) {
               for (int j = 0; j < imageSize; j++) {
                   if (byteMatrix.get(i, j)) {
                       graphics.fillRect(i, j, 1, 1);
                   }
               }
           }
           byteArrayOutputStream = new ByteArrayOutputStream();
           ImageIO.write(image, fileType, byteArrayOutputStream);

       } catch (WriterException e) {
           e.printStackTrace();
       } catch (IOException e) {
           e.printStackTrace();
       }
       LOG.info("Converted the following to QR Code: " + conversionString);
       return byteArrayOutputStream.toByteArray();
   }

}

