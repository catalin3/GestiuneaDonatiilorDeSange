package donator.entities;


import org.junit.Before;
import org.junit.Test;



public class DonatorTest {

    private Donator d;

    @Before
    public void setUp() throws Exception {
        d=new Donator();
       d.setNume("1");
    }

    @Test
    public void getNume() {
        assert d.getNume().equals("1");
    }

    @Test
    public void setNume() {
        d.setNume("2");
        assert  d.getNume().equals("2");
    }
}
