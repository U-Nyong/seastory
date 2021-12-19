package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.FishCartQtyDownService;
import vo.ActionForward;

public class FishCartQtyDownAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String kind = request.getParameter("kind");
		FishCartQtyDownService fishCartQtyDownService = new FishCartQtyDownService();
		fishCartQtyDownService.downCartQty(kind,request);
		ActionForward forward = new ActionForward("fishCartList.fish",true);
		return forward;
	}

}
