package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import vo.Cart;
import vo.Fish;
import dao.FishDAO;

public class FishCartAddService {

	public Fish getCartFish(int id) {
		Connection con = getConnection();
		FishDAO fishDAO = FishDAO.getInstance();
		fishDAO.setConnection(con);	
		Fish fish = fishDAO.selectFish(id);
		close(con);
		return fish;
	}

	public void addCart(HttpServletRequest request, Fish cartFish) {
		HttpSession session = request.getSession();
		ArrayList<Cart> cartList = (ArrayList<Cart>)session.getAttribute("cartList");
		
		if(cartList == null){
			cartList = new ArrayList<Cart>();
			session.setAttribute("cartList", cartList);
		}
		
		
		boolean isNewCart = true;
		
		for (int i = 0; i < cartList.size(); i++) {
			if(cartFish.getKind().equals(cartList.get(i).getKind())){
				isNewCart = false;
				cartList.get(i).setQty(cartList.get(i).getQty()+1);
				break;
			}
		}
		
		if(isNewCart){
			Cart cart = new Cart();
			cart.setImage(cartFish.getImage());
			cart.setKind(cartFish.getKind());
			cart.setPrice(cartFish.getPrice());
			cart.setQty(1);
			cartList.add(cart);
		}
		
	}
	
}