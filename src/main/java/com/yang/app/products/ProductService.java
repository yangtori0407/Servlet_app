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
		actionForward.setFlag(true);
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
	public void updateBefore(HttpServletRequest request, ActionForward actionForward) throws Exception{
		ProductDTO productDTO = new ProductDTO();
		String num = request.getParameter("productNum");
		productDTO.setProductNum(Long.parseLong(num));
		productDTO = productDAO.getDetail(productDTO);
		request.setAttribute("updateDTO", productDTO);
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/products/update.jsp");
	}
	public void update(HttpServletRequest request, ActionForward actionForward) throws Exception{
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductDetail(request.getParameter("productDetail"));
		productDTO.setProductName(request.getParameter("productName"));
		productDTO.setProductNum(Long.parseLong(request.getParameter("productNum")));
		productDTO.setProductRate(Double.parseDouble(request.getParameter("productRate")));
		int result = productDAO.update(productDTO);
		
		String str = "상품 정보 수정 실패";
		if(result > 0) {
			str = "상품 정보 수정 성공";
		}
		request.setAttribute("result", str);
		request.setAttribute("path", "/products/detail.do?productNum="+request.getParameter("productNum"));
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/commons/result.jsp");
	}
	public void add(HttpServletRequest request, ActionForward actionForward) throws Exception{
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductDetail(request.getParameter("productDetail"));
		productDTO.setProductName(request.getParameter("productName"));
		productDTO.setProductRate(Double.parseDouble(request.getParameter("productRate")));
		int result = productDAO.add(productDTO);
		
		String str = "상품 추가를 실패하였습니다.";
		if(result > 0) {
			str = "상품 추가를 성공 하였습니다.";	
		}
		request.setAttribute("result", str);
		request.setAttribute("path", "/products/list.do");
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/commons/result.jsp");
	}
}
