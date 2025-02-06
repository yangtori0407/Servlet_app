package com.yang.app.locations;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.yang.app.utils.DBConnection;

public class LocationDAO {
	
	public int update(LocationDTO locationDTO) throws Exception {
		int result = 0;
		Connection con = DBConnection.getConnection();
		String sql = "UPDATE LOCATIONS SET STREET_ADDRESS=?, POSTAL_CODE=?, CITY=?, STATE_PROVINCE=?, COUNTRY_ID=? "
				+ "WHERE LOCATION_ID=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, locationDTO.getStreet_address());
		st.setString(2, locationDTO.getPostal_code());
		st.setString(3, locationDTO.getCity());
		st.setString(4, locationDTO.getState_province());
		st.setString(5, locationDTO.getCountry_id());
		st.setLong(6, locationDTO.getLocation_id());
		
		result = st.executeUpdate();
		
		DBConnection.disConnection(st, con);
		
		return result;
	}
	
	public int delete(LocationDTO locationDTO) throws Exception {
		int result = 0;
		Connection con = DBConnection.getConnection();
		String sql = "DELETE LOCATIONS WHERE LOCATION_ID=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setLong(1, locationDTO.getLocation_id());
		
		result = st.executeUpdate();
		
		DBConnection.disConnection(st, con);
		
		return result;
	}
	
	public int add(LocationDTO locationDTO) throws Exception{
		int result = 0;
		Connection con = DBConnection.getConnection();
		String sql = "INSERT INTO LOCATIONS(LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID)"
				+ " VALUES(LOCATIONS_SEQ.NEXTVAL, ?, ?, ?, ?, ?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, locationDTO.getStreet_address());
		st.setString(2, locationDTO.getPostal_code());
		st.setString(3, locationDTO.getCity());
		st.setString(4, locationDTO.getState_province());
		st.setString(5, locationDTO.getCountry_id());
		
		result = st.executeUpdate();
		
		return result;
	}
	
	public List<LocationDTO> getList() throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM LOCATIONS";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		List<LocationDTO> dtos = new ArrayList<LocationDTO>();
		
		while(rs.next()) {
			LocationDTO dto = new LocationDTO();
			dto.setLocation_id(rs.getLong("LOCATION_ID"));
			dto.setStreet_address(rs.getString("STREET_ADDRESS"));
			dto.setPostal_code(rs.getString("POSTAL_CODE"));
			dto.setCity(rs.getString("CITY"));
			dto.setState_province(rs.getString("STATE_PROVINCE"));
			dto.setCountry_id(rs.getString("COUNTRY_ID"));
			
			dtos.add(dto);
		}
		
		return dtos;
	}
	
	public LocationDTO getDetail(LocationDTO locationDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM LOCATIONS WHERE LOCATION_ID = ?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setLong(1, locationDTO.getLocation_id());
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
			locationDTO.setStreet_address(rs.getString("STREET_ADDRESS"));
			locationDTO.setPostal_code(rs.getString("POSTAL_CODE"));
			locationDTO.setCity(rs.getString("CITY"));
			locationDTO.setState_province(rs.getString("STATE_PROVINCE"));
			locationDTO.setCountry_id(rs.getString("COUNTRY_ID"));
		} else {
			locationDTO = null;
		}
		DBConnection.disConnection(rs, st, con);
		
		return locationDTO;
	}

}
