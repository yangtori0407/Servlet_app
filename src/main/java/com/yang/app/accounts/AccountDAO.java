package com.yang.app.accounts;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.yang.app.products.ProductDTO;
import com.yang.app.utils.DBConnection;

public class AccountDAO {
	
	public List<AccountDTO> getList(AccountDTO accountDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM ACCOUNTS A JOIN PRODUCTS P ON A.PRODUCTNUM = P.PRODUCTNUM  WHERE USERNAME=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, accountDTO.getUserName());
		ResultSet rs = st.executeQuery();
		List<AccountDTO> ar = new ArrayList<AccountDTO>();
		while(rs.next()) {
			AccountDTO addDTO = new AccountDTO();
			addDTO.setProductDTO(new ProductDTO());
			addDTO.setAccountBalance(rs.getLong("ACCOUNTBALANCE"));
			addDTO.setAccountDate(rs.getDate("ACCOUNTDATE"));
			addDTO.setAccountNum(rs.getString("ACCOUNTNUM"));
			addDTO.setProductNum(rs.getLong("PRODUCTNUM"));
			addDTO.setUserName(rs.getString("USERNAME"));
			addDTO.getProductDTO().setProductName(rs.getString("PRODUCTNAME"));
			ar.add(addDTO);
		}
		
		DBConnection.disConnection(rs, st, con);
		return ar;
	}
	public int join(AccountDTO accountDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "INSERT INTO ACCOUNTS(ACCOUNTNUM, USERNAME,PRODUCTNUM, ACCOUNTBALANCE, ACCOUNTDATE) "
				+ "VALUES(ACCOUNTNUM_SEQ.NEXTVAL, ?, ?, 0, SYSDATE)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, accountDTO.getUserName());
		st.setLong(2, accountDTO.getProductDTO().getProductNum());
		int result = st.executeUpdate();
		
		DBConnection.disConnection(st, con);
		
		return result;
	}
}
