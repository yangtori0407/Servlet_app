package com.yang.app.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.yang.app.ActionForward;

public class UserService {
	private UserDAO userDAO;
	
	public UserService() {
		userDAO = new UserDAO();
	}
	
	public void join(HttpServletRequest request, ActionForward actionForward) throws Exception{
		UserDTO userDTO = new UserDTO();
		userDTO.setEmail(request.getParameter("email"));
		userDTO.setName(request.getParameter("name"));
		userDTO.setPassword(request.getParameter("password"));
		userDTO.setPhone(request.getParameter("phone"));
		userDTO.setUserName(request.getParameter("userName"));
		int result = userDAO.join(userDTO);
		
		String str = "회원가입에 실패하였습니다.";
		if(result > 0) {
			str = "회원가입에 성공하였습니다.";
			
		}
		//창에 뜰 메세지와 뜨고 난 뒤에 갈 페이지
		request.setAttribute("result", str);
		request.setAttribute("path", "/index.do");
		//포워딩할 jsp 주소
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/commons/result.jsp");
	}
	public void login(HttpServletRequest request, ActionForward actionForward) throws Exception{
		UserDTO userDTO = new UserDTO();
		userDTO.setUserName(request.getParameter("userName"));
		userDTO.setPassword(request.getParameter("password"));
		userDTO = userDAO.login(userDTO);
		
		if(userDTO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginDTO", userDTO);
//			actionForward.setFlag(true);
//			actionForward.setPath("../index.do");
			actionForward.setFlag(false);
			actionForward.setPath("../index.do");
		} else {
			request.setAttribute("result", "로그인 실패했습니다.");
			request.setAttribute("path", "./login.do");
			actionForward.setFlag(true);
			actionForward.setPath("/WEB-INF/commons/result.jsp");
		}
		
	}
	public void logout(HttpServletRequest request, ActionForward actionForward) throws Exception{
		HttpSession session = request.getSession();
		session.setAttribute("loginDTO", null);
		actionForward.setFlag(false);
		actionForward.setPath("../index.do");
	}

	public void mypage(HttpServletRequest request, ActionForward actionForward) throws Exception{
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/users/mypage.jsp");
	}

	public void update(HttpServletRequest request, ActionForward actionForward) throws Exception{
		HttpSession session = request.getSession();
		
		UserDTO userDTO = (UserDTO)session.getAttribute("loginDTO");
		//세션안에 있는 userDTO이기 때문에 set으로 값을 바꾸면 session 안의 객체의 내용물들이 바뀐다.
		
		UserDTO updateDTO = new UserDTO();
		
		updateDTO.setEmail(request.getParameter("email"));
		updateDTO.setName(request.getParameter("name"));
		updateDTO.setPhone(request.getParameter("phone"));
		updateDTO.setUserName(request.getParameter("userName"));
		updateDTO.setPassword(userDTO.getPassword());
		
		int result = userDAO.update(userDTO);
		String str = "정보 수정을 실패하였습니다.";
		if(result > 0) {
			session.setAttribute("loginDTO", updateDTO);
			str = "정보 수정을 완료하였습니다.";
		}
		request.setAttribute("result", str);
		request.setAttribute("path", "./mypage.do");
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/commons/result.jsp");
	}
}
