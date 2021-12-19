package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.FishCartQtyUpService;
import vo.ActionForward;

public class FishCartQtyUpAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String kind = request.getParameter("kind");
		FishCartQtyUpService fishCartQtyUpService = new FishCartQtyUpService();
		fishCartQtyUpService.upCartQty(kind,request);
		ActionForward forward = new ActionForward("fishCartList.fish", true);
		return forward;
	}
}
