package circus;

//import com.pahlsoft.circus.builder.QRBuilder;
//import com.pahlsoft.circus.jpa.AttendeeEntity;
//import org.testng.annotations.BeforeClass;
//import org.testng.annotations.Test;
//
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;

public class JPATest {

//    EntityManagerFactory emf;
//    EntityManager entityManager;
//    QRBuilder qrBuilder;
//
//    @BeforeClass
//    private void setup () throws Exception {
//        emf = Persistence.createEntityManagerFactory("PersistenceUnitTest");
//        entityManager = emf.createEntityManager();
//    }
//
//    @Test
//    public void createTheFirstPersonAtTheCircus() throws Exception {
//        AttendeeEntity attendeeEntity = new AttendeeEntity();
//        qrBuilder = new QRBuilder("Douchebag,Steve,1");
//        attendeeEntity.setAttendeeId(1);
//        attendeeEntity.setFirstName("Steve");
//        attendeeEntity.setLastName("Douchebag");
//        attendeeEntity.setEmailAddress("stevedbag@gmail.com");
//        attendeeEntity.setShortDesc("I'm a total jerk, you should hire me");
//        attendeeEntity.setTitle("VP");
//        attendeeEntity.setQrcode(qrBuilder.convertToBytes());
//
//        entityManager.getTransaction().begin();
//        entityManager.persist(attendeeEntity);
//        entityManager.getTransaction().commit();
//        System.out.println("Created Attendee: " + attendeeEntity.getAttendeeId());
//
//    }
}
