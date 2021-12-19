package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import vo.Fish;
import dao.FishDAO;
public class FishViewService {

	public Fish getFishView(int id) {
		Connection con = getConnection();
		FishDAO fishDAO = FishDAO.getInstance();
		fishDAO.setConnection(con);	
		int updateCount = fishDAO.updateReadCount(id);
		
		if(updateCount>0){
			commit(con);
		}else{
			rollback(con);
		}
		
		Fish fish = fishDAO.selectFish(id);
		close(con);
		return fish;
	}
	
	public Fish getFishView(String kind) {
		Connection con = getConnection();
		FishDAO fishDAO = FishDAO.getInstance();
		fishDAO.setConnection(con);	
		int updateCount = fishDAO.updateReadCount(kind);
		
		if(updateCount>0){
			commit(con);
		}else{
			rollback(con);
		}
		
		Fish fish = fishDAO.selectFish(kind);
		close(con);
		return fish;
	}

}
