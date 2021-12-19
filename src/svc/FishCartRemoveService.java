package svc;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import vo.Cart;

public class FishCartRemoveService {
	
	public void cartRemove(HttpServletRequest request, String[] kindArray) {
		
		HttpSession session = request.getSession();
		ArrayList<Cart> cartList = (ArrayList<Cart>)session.getAttribute("cartList");
		
		for (int i = 0; i < kindArray.length; i++) {
			
			for (int j = 0; j < cartList.size(); j++) {
				
				//System.out.println("kindArray[i]: "+kindArray[i]);
				//System.out.println("cartList.get(j).getKind(): "+cartList.get(j).getKind());
				
				if(cartList.get(j).getKind().equals(kindArray[i])){
						cartList.remove(cartList.get(j));
					
				}
			}
		}
	}
}