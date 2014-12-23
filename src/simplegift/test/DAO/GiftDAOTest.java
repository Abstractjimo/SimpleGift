package simplegift.test.DAO;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import simplegift.DAO.GiftDAO;
import simplegift.model.Gift;

public class GiftDAOTest {

	@Test
	public void test() {
		List<Gift> gifts = GiftDAO.getLatestGifts();
		System.out.println(gifts.size());
	}

}
