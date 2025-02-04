package com.yang.app.tests.locations;

import java.util.List;

import com.yang.app.locations.LocationDAO;
import com.yang.app.locations.LocationDTO;

public class LocationDAOTest {
	
	public static void main(String[] args) {
		LocationDAO dao = new LocationDAO();
		
		try {
			List<LocationDTO> dtos = dao.getList();
			System.out.println(dtos.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
