package dao;

import static db.JdbcUtil.*;
import java.sql.*;
import java.util.ArrayList;
import vo.Fish;

public class FishDAO {
	
	Connection con;
	private static FishDAO boardDAO;
	
	private FishDAO() {}
	
	public void setConnection(Connection con){
		this.con = con;
	}
	
	public static FishDAO getInstance(){
		
		if(boardDAO ==null){
			boardDAO = new FishDAO();
		}
		
		return boardDAO;
	}
	
	public ArrayList<Fish> selectFishList() {
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		ArrayList<Fish> fishList = null;
		
		try {
			pstmt = con.prepareStatement("SELECT * FROM fish");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				fishList = new ArrayList<Fish>();
				
				do {
					fishList.add(new Fish(
							rs.getInt("id")
							,rs.getString("kind")
							,rs.getInt("price")
							,rs.getString("image")
							,rs.getString("country")
							,rs.getInt("readcount")));
				} while (rs.next());
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return fishList;
	}
	
	public Fish selectFish(int id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Fish fish = null;
		
		try {
			pstmt = con.prepareStatement("SELECT * FROM fish WHERE id=?");
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				fish = new Fish(
						rs.getInt("id")
						,rs.getString("kind")
						,rs.getInt("price")
						,rs.getString("image")
						,rs.getString("country")
						,rs.getInt("readcount"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return fish;
	}
	
	public Fish selectFish(String kind) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Fish fish = null;
		
		try {
			pstmt = con.prepareStatement("SELECT * FROM fish WHERE kind=?");
			pstmt.setString(2, kind);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				fish = new Fish(
						rs.getInt("id")
						,rs.getString("kind")
						,rs.getInt("price")
						,rs.getString("image")
						,rs.getString("country")
						,rs.getInt("readcount"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return fish;
	}
	
	public int updateReadCount(int id) {
		PreparedStatement pstmt = null;
		int updateCount = 0;
		String sql = "";
		
		try {
			sql = "UPDATE fish SET readcount = readcount + 1 WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			updateCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return updateCount;
	}
	
	public int updateReadCount(String kind) {
		PreparedStatement pstmt = null;
		int updateCount = 0;
		String sql = "";
		
		try {
			sql = "UPDATE fish SET readcount = readcount + 1 WHERE kind=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, kind);
			updateCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return updateCount;
	}
	
	public int insertFish(Fish fish) {
		PreparedStatement pstmt = null;
		int insertCount = 0;
		String sql = "";
		
		try {
			sql = "INSERT INTO fish VALUES(NULL,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, fish.getKind());
			pstmt.setInt(2, fish.getPrice());
			pstmt.setString(3, fish.getImage());
			pstmt.setString(4, fish.getCountry());
			pstmt.setInt(8, fish.getReadcount());
			insertCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return insertCount;
	}
	
}
