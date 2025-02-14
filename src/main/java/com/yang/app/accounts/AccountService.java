package com.yang.app.accounts;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.yang.app.ActionForward;
import com.yang.app.products.ProductDTO;
import com.yang.app.users.UserDTO;

public class AccountService {
	private AccountDAO accountDAO;
	
	public AccountService() {
		accountDAO = new AccountDAO();
	}
	
	public void getList(HttpServletRequest request, ActionForward actionForward) throws Exception{
		UserDTO userDTO = (UserDTO)request.getSession().getAttribute("loginDTO");
		//System.out.println(userDTO);
		AccountDTO accountDTO = new AccountDTO();
		accountDTO.setUserName(userDTO.getUserName());
		List<AccountDTO> ar = accountDAO.getList(accountDTO);
		request.setAttribute("accounts", ar);
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/accounts/list.jsp");
		
		//account에서 productName 을 가져오는 방법
		//1. 이미 가지고 온 AccountDTO List를 ProductDAO getDetail에 돌려서 productNum을 가지고 온다
		// 이때 AccountDTO와 productName 의 리스트는 인덱스 값이 동일하기 때문에 꺼낼 때 동일하게 꺼낼 수 있다.
		//2. AccountDTO 안에 ProductDTO를 선언한다!
		//join을 통해 products테이블에서 값을 가지고 와서 AccountDTO.getProductDTO.setProductName을 해서 가지고 올 수 있다!!
	}

	public void join(HttpServletRequest request, ActionForward actionForward) throws Exception{
		AccountDTO accountDTO = new AccountDTO();
		accountDTO.setProductDTO(new ProductDTO());
		accountDTO.setUserName(((UserDTO)request.getSession().getAttribute("loginDTO")).getUserName());
		accountDTO.getProductDTO().setProductNum(Long.parseLong(request.getParameter("productNum")));
		int result = accountDAO.join(accountDTO);
		
		String str = "상품 가입에 실패하였습니다.";
		if(result > 0) {
			str = "상품 가입이 되었습니다.";
		}
		request.setAttribute("result", str);
		request.setAttribute("path", "/products/detail.do?productNum="+request.getParameter("productNum"));
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/commons/result.jsp");
	}
	
	
	
}
