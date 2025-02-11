package com.yang.app.countries;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.yang.app.utils.DBConnection;

import oracle.jdbc.proxy.annotation.Pre;

public class CountryDAO {
	
	public List<CountryDTO> getList() throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM COUNTRIES";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		List<CountryDTO> dtos = new ArrayList<CountryDTO>();
		
		while(rs.next()) {
			CountryDTO dto = new CountryDTO();
			dto.setCountry_id(rs.getString("COUNTRY_ID"));
			dto.setCountry_name(rs.getString("COUNTRY_NAME"));
			dto.setRegion_id(rs.getLong("REGION_ID"));
			
			dtos.add(dto);
		}
		
		DBConnection.disConnection(rs, st, con);
		
		return dtos;
	}
	
	public CountryDTO getDetail(CountryDTO countryDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM COUNTRIES WHERE COUNTRY_ID=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, countryDTO.getCountry_id());
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			countryDTO.setCountry_name(rs.getString("COUNTRY_NAME"));
			countryDTO.setRegion_id(rs.getLong("REGION_ID"));
		}
		
		DBConnection.disConnection(rs, st, con);
		
		return countryDTO;
	}
	
	public int add(CountryDTO countryDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "INSERT INTO COUNTRIES(COUNTRY_ID, COUNTRY_NAME, REGION_ID) VALUES(?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, countryDTO.getCountry_id());
		st.setString(2, countryDTO.getCountry_name());
		st.setLong(3, countryDTO.getRegion_id());
		
		int result = st.executeUpdate();
		
		DBConnection.disConnection(st, con);
		
		return result;
	}
	
	public int update(CountryDTO countryDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "UPDATE COUNTRIES SET COUNTRY_NAME=?,REGION_ID=? WHERE COUNTRY_ID=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, countryDTO.getCountry_name());
		st.setLong(2, countryDTO.getRegion_id());
		
		int result = st.executeUpdate();
		
		DBConnection.disConnection(st, con);
		
		return result;
	}
	
	public int delete(CountryDTO countryDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "DELETE COUNTRIES WHERE COUNTRY_ID=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, countryDTO.getCountry_id());
		
		int result = st.executeUpdate();
		
		DBConnection.disConnection(st, con);
		
		return result;
	}

}
