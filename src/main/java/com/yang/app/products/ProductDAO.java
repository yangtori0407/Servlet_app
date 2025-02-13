package com.yang.app.products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.yang.app.utils.DBConnection;

public class ProductDAO {
	
	public List<ProductDTO> getList() throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM PRODUCTS";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		List<ProductDTO> ar = new ArrayList<ProductDTO>();
		while(rs.next()) {
			ProductDTO productDTO = new ProductDTO();
			productDTO.setProductDate(rs.getDate("PRODUCTDATE"));
			productDTO.setProductDetail(rs.getString("PRODUCTDETAIL"));
			productDTO.setProductName(rs.getString("PRODUCTNAME"));
			productDTO.setProductNum(rs.getLong("PRODUCTNUM"));
			productDTO.setProductRate(rs.getDouble("PRODUCTRATE"));
			ar.add(productDTO);
		}
		
		DBConnection.disConnection(rs, st, con);
		
		return ar;
	}
	
	public ProductDTO getDetail(ProductDTO productDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM PRODUCTS WHERE PRODUCTNUM=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setLong(1, productDTO.getProductNum());
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
			productDTO.setProductDate(rs.getDate("PRODUCTDATE"));
			productDTO.setProductDetail(rs.getString("PRODUCTDETAIL"));
			productDTO.setProductName(rs.getString("PRODUCTNAME"));
			productDTO.setProductNum(rs.getLong("PRODUCTNUM"));
			productDTO.setProductRate(rs.getDouble("PRODUCTRATE"));
		} else {
			productDTO = null;
		}
		
		DBConnection.disConnection(rs, st, con);
		
		return productDTO;
	}
	
	public int update(ProductDTO productDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "UPDATE PRODUCTS SET PRODUCTNAME=?, PRODUCTRATE=?, PRODUCTDETAIL=? WHERE PRODUCTNUM=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, productDTO.getProductName());
		st.setDouble(2, productDTO.getProductRate());
		st.setString(3,  productDTO.getProductDetail());
		st.setLong(4, productDTO.getProductNum());
		int result = st.executeUpdate();
		
		return result;
		
	}
}
