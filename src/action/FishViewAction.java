package action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.FishViewService;
import vo.ActionForward;
import vo.Fish;

public class FishViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		FishViewService fishViewService = new FishViewService();
		Fish fish = fishViewService.getFishView(id);
		request.setAttribute("fish", fish);
		
		Cookie todayImageCookie = new Cookie("today"+id, fish.getImage());
		todayImageCookie.setMaxAge(60*60*24);
		response.addCookie(todayImageCookie);
		ActionForward forward = new ActionForward("fishView.jsp", false);
		return forward;
	}
	
}