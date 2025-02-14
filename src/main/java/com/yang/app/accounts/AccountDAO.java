package com.yang.app.accounts;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.yang.app.utils.DBConnection;

public class AccountDAO {
	
	public void getList(AccountDTO accountDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM ACCOUNTS WHERE USERNAME=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, accountDTO.get);
	}

}
