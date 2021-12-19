package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.MemberJoinService;
import vo.ActionForward;
import vo.MemberBean;

public class MemberJoinAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	
		 	MemberBean member = new MemberBean();
	   		boolean joinResult = false;
	   		
	   		member.setId(request.getParameter("id"));
	   		member.setPasswd(request.getParameter("passwd"));
	   		member.setName(request.getParameter("name"));
	   		member.setAddr(request.getParameter("addr"));
	   		member.setPn(request.getParameter("pn"));
	   		
	   		MemberJoinService memberJoinService = new MemberJoinService();
	   		joinResult=memberJoinService.joinMember(member);
	   		
	   		ActionForward forward = null;
	   		if(joinResult==false){
	   			response.setContentType("text/html;charset=UTF-8");
	   			PrintWriter out = response.getWriter();
	   			out.println("<script>");
	   			out.println("alert('회원가입 완료!')");
	   			out.println("history.back()");
	   			out.println("</script>");
		   	}
	   		else{
	   	    forward = new ActionForward(null, joinResult);
	   		forward.setRedirect(true);
	   		forward.setPath("loginForm.jsp");
	   		}
	   		return forward;
	}
}