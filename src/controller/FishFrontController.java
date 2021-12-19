package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.FishCartAddAction;
import action.FishCartListAction;
import action.FishCartQtyDownAction;
import action.FishCartQtyUpAction;
import action.FishCartRemoveAction;
//import action.FishCartSearchAction;
import action.FishListAction;
import action.FishViewAction;
import vo.ActionForward;

@WebServlet("*.fish")
public class FishFrontController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//1. �뜝�럩�뭵嶺뚳퐦�삕�뜝�럥�냱�뜝�럥�닣
		String command = request.getServletPath();		
		//command : /fishList.fish �뜝�럥苡�
				
		Action action = null;
		ActionForward forward = null;
		
		//2.�뤆�룊�삕 �뜝�럩�뭵嶺뚳퐦�삕�솻洹��뫊餓ο옙 占쎈쑏熬곣뫜�삕�뜝�럥鍮띶뜝�럥裕욃슖�돦裕뉐퐲占� �뜝�럩源덌옙鍮듿뜝占�
		if(command.equals("/fishList.fish")){
			action = new FishListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/fishView.fish")){
			action = new FishViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/fishCartAdd.fish")){
			action = new FishCartAddAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/fishCartList.fish")){
			action = new FishCartListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/fishCartRemove.fish")){
			action = new FishCartRemoveAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/fishCartQtyUp.fish")){
			action = new FishCartQtyUpAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/fishCartQtyDown.fish")){
			action = new FishCartQtyDownAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//3. �뜝�럥竊쀥뜝�럩�쐳�뜝�럥�럠
		if(forward !=null){
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
				
			}
		}
		
	}
	
}
