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
}
