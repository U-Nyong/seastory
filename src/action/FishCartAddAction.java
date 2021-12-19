package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.FishCartAddService;
import vo.ActionForward;
import vo.Fish;

public class FishCartAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		FishCartAddService fishCartAddService = new FishCartAddService();
		int id = Integer.parseInt(request.getParameter("id"));
		Fish cartFish = fishCartAddService.getCartFish(id);
		fishCartAddService.addCart(request,cartFish);
		ActionForward forward = new ActionForward("fishCartList.fish", true);
		return forward;
	}

}
