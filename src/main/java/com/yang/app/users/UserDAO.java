package com.yang.app.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.yang.app.utils.DBConnection;

public class UserDAO {
	
	public int join(UserDTO userDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "INSERT INTO USERS(USERNAME, PASSWORD, NAME, PHONE, EMAIL) "
				+ "values(?, ?, ?, ?, ?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, userDTO.getUserName());
		st.setString(2, userDTO.getPassword());
		st.setString(3, userDTO.getName());
		st.setString(4, userDTO.getPhone());
		st.setString(5, userDTO.getEmail());
		
		int result = st.executeUpdate();
		
		DBConnection.disConnection(st, con);
		
		return result;
	}
	public UserDTO login(UserDTO userDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM USERS WHERE USERNAME=? AND PASSWORD=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, userDTO.getUserName());
		st.setString(2, userDTO.getPassword());
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			userDTO.setEmail(rs.getString("EMAil"));
			userDTO.setName(rs.getString("NAME"));
			userDTO.setPhone(rs.getString("PHONE"));
	
		} else {
			userDTO = null;
		}
		DBConnection.disConnection(rs, st, con);
		
		return userDTO;
	}
	public int update(UserDTO userDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "UPDATE USERS SET NAME=?, EMAIL=?, PHONE=? WHERE USERNAME=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, userDTO.getName());
		st.setString(2, userDTO.getEmail());
		st.setString(3, userDTO.getPhone());
		st.setString(4, userDTO.getUserName());
		int result = st.executeUpdate();
		
		DBConnection.disConnection(st, con);
		
		return result;
	}

}
