package action;

import java.util.ArrayList;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.FishListService;
import vo.ActionForward;
import vo.Fish;

public class FishListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ArrayList<String> todayImageList = new ArrayList<String>();
		Cookie[] cookieArray = request.getCookies();
		
		if(cookieArray != null){
			for (int i = 0; i < cookieArray.length; i++) {
				if(cookieArray[i].getName().startsWith("today")){
					todayImageList.add(cookieArray[i].getValue());
				}
			}
		}
		
		FishListService fishListService = new FishListService();
		ArrayList<Fish> fishList = fishListService.getFishList();
		request.setAttribute("fishList", fishList);
		request.setAttribute("todayImageList", todayImageList);
		ActionForward forward = new ActionForward("Main.jsp", false);
		
		return forward;
	}
	
}
