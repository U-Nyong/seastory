package action;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.FishCartListService;
import vo.ActionForward;
import vo.Cart;

public class FishCartListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		FishCartListService fishCartListService = new FishCartListService();
		ArrayList<Cart> cartList = fishCartListService.getCartList(request);
		//珥앷툑�븸 怨꾩궛
		int totalMoney = 0;
		int money = 0 ;
		
		for (int i = 0; i < cartList.size(); i++) {
			money = cartList.get(i).getPrice()*cartList.get(i).getQty();
			totalMoney += money;
		}

		request.setAttribute("totalMoney", totalMoney);
		request.setAttribute("cartList", cartList);
		ActionForward forward = new ActionForward("fishCartList.jsp", false);
		return forward;
	}

}
