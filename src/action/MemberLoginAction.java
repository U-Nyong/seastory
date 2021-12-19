package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.MemberLoginService;
import vo.ActionForward;
import vo.MemberBean;

public class MemberLoginAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 
		 	HttpSession session = request.getSession();
	   		MemberBean member = new MemberBean();
	   		
	   		member.setId(request.getParameter("id"));
	   		member.setPasswd(request.getParameter("passwd"));
	   		
	   		MemberLoginService memberLoginService = new MemberLoginService();
	   		boolean loginResult = memberLoginService.login(member);
	   		ActionForward forward = null;
	   		if(loginResult){
	   	    forward = new ActionForward(null, loginResult);
	   		session.setAttribute("id", member.getId());
	   		forward.setRedirect(true);
	   		forward.setPath("./index.jsp");
	   		}
	   		else{
	   			response.setContentType("text/html;charset=utf-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('�α��� ����');");
		   		out.println("location.href='./memberLogin.me';");
		   		out.println("</script>");
	   		}
	   		return forward;
	}
}