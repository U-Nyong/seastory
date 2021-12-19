package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;
import dao.FishDAO;
import vo.Fish;
public class FishListService {

	public ArrayList<Fish> getFishList() {
		
		Connection con = getConnection();
		FishDAO fishDAO = FishDAO.getInstance();
		fishDAO.setConnection(con);		
		ArrayList<Fish> fishList = fishDAO.selectFishList();
		close(con);
		return fishList;
	}
	
}