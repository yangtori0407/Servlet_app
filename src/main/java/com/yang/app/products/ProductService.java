package com.yang.app.products;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.yang.app.ActionForward;

public class ProductService {
	private ProductDAO productDAO;
	
	public ProductService() {
		productDAO = new ProductDAO();
	}
	
	public void getList(HttpServletRequest request, ActionForward actionForward) throws Exception{
		List<ProductDTO> ar = productDAO.getList();
		request.setAttribute("list", ar);
		actionForward.setFlag(false);
		actionForward.setPath("/WEB-INF/views/products/list.jsp");
	}
	
	public void getDetail(HttpServletRequest request, ActionForward actionForward) throws Exception{
		String num = request.getParameter("productNum");
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductNum(Long.parseLong(num));
		productDTO = productDAO.getDetail(productDTO);
		request.setAttribute("dto", productDTO);
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/products/detail.jsp");
	}
}
