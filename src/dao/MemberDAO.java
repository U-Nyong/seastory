package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.sql.DataSource;
import vo.MemberBean;
import static db.JdbcUtil.*;

public class MemberDAO {
	public static MemberDAO instance;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	
	private MemberDAO() {}
	
	public static MemberDAO getInstance(){
		if(instance == null){
			instance = new MemberDAO();
		}
		return instance;
	}
	
	public void setConnection(Connection con){
		this.con = con;
	}
	
	public String selectLoginId(MemberBean member){
		String loginId = null;
		String sql="SELECT id FROM MEMBER WHERE id = ? AND passwd = ?";
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				loginId = rs.getString("id");
			}
		}catch(Exception e){
			e.printStackTrace();		
		}finally{
			close(rs);
			close(pstmt);
		}
		
		return loginId;
	}
	
	public int insertMember(MemberBean member){
		String sql="INSERT INTO MEMBER VALUES (?,?,?,?,?)";
		int insertCount=0;
		
		try {

			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getAddr());
			pstmt.setString(5, member.getPn());
			insertCount=pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();			
		} finally {
			close(pstmt);
		}
		
		return insertCount;
	}
	
	public ArrayList<MemberBean> selectMemberList(){
		String sql="SELECT * FROM MEMBER";
		ArrayList<MemberBean> memberList = new ArrayList<MemberBean>();
		MemberBean mb = null;
		
		try {
			
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				do{
				mb=new MemberBean();
				mb.setId(rs.getString("id"));
				mb.setPasswd(rs.getString("passwd"));
				mb.setName(rs.getString("name"));
				mb.setAddr(rs.getString("addr"));
				mb.setPn(rs.getString("pn"));
				memberList.add(mb);
				} while(rs.next());
			}
		} catch(Exception e){
			e.printStackTrace();			
		} finally{
			close(rs);
			close(pstmt);
		}
		
		return memberList;
	}
	
	public MemberBean selectMember(String id){
		String sql="SELECT * FROM MEMBER WHERE id = ?";
		MemberBean mb = null;
		try {
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				
				mb=new MemberBean();
				mb.setId(rs.getString("id"));
				mb.setPasswd(rs.getString("passwd"));
				mb.setName(rs.getString("name"));
				mb.setAddr(rs.getString("addr"));
				mb.setPn(rs.getString("pn"));
				
			}
		} catch(Exception e){
			e.printStackTrace();		
		} finally {
			
			close(rs);
			close(pstmt);
			
		}
		
		return mb;
		
	}
	public int deleteMember(String id){
		String sql = "DELETE MEMBER WHERE id = ?";
		int deleteCount = 0;

		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteCount = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return deleteCount;
	}
}