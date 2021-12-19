package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.FishCartRemoveService;
import vo.ActionForward;

public class FishCartRemoveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String[] kindArray = request.getParameterValues("remove");
		FishCartRemoveService fishCartRemoveService = new FishCartRemoveService();
		fishCartRemoveService.cartRemove(request,kindArray);
		ActionForward forward = new ActionForward("fishCartList.fish",true);
		return forward;
	}	
}