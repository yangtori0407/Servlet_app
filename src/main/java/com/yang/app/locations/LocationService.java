package com.yang.app.locations;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.yang.app.ActionForward;

public class LocationService {
	private LocationDAO locationDAO;
	
	public LocationService() {
		locationDAO = new LocationDAO();
	}
	
	public void getList(HttpServletRequest request, ActionForward actionForward) throws Exception{
		List<LocationDTO> ar = locationDAO.getList();
		request.setAttribute("list", ar);
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/locations/list.jsp");
		
	}
	
	public void getDetail(HttpServletRequest request, ActionForward actionForward) throws Exception{
		LocationDTO locationDTO = new LocationDTO();
		locationDTO.setLocation_id(Long.parseLong(request.getParameter("location_id")));
		locationDTO = locationDAO.getDetail(locationDTO);
		request.setAttribute("dto", locationDTO);
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/locations/detail.jsp");
	}
	
	public void add(HttpServletRequest request, ActionForward actionForward) throws Exception{
		LocationDTO locationDTO = new LocationDTO();
		locationDTO.setCity(request.getParameter("city"));
		locationDTO.setCountry_id(request.getParameter("country_id"));
		locationDTO.setPostal_code(request.getParameter("postal_code"));
		locationDTO.setState_province(request.getParameter("state_province"));
		locationDTO.setStreet_address(request.getParameter("street_address"));
		
		int result = locationDAO.add(locationDTO);
		
		String str = "지역 추가 실패";
		
		if(result > 0) {
			str = "지역 추가 성공";
		}
		request.setAttribute("result", str);
		
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/commons/result.jsp");
	}
	
	public void update(HttpServletRequest request, ActionForward actionForward) throws Exception{
		LocationDTO locationDTO = new LocationDTO();
		locationDTO.setLocation_id(Long.parseLong(request.getParameter("location_id")));
		locationDTO = locationDAO.getDetail(locationDTO);
		
		request.setAttribute("dto", locationDTO);
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/locations/update.jsp");
	}
	
	public void updateProcess(HttpServletRequest request, ActionForward actionForward) throws Exception{
		
		LocationDTO locationDTO = new LocationDTO();
		String id = request.getParameter("location_id");
		String city = request.getParameter("city");
		String address = request.getParameter("street_address");
		String code = request.getParameter("postal_code");
		String state = request.getParameter("state_province");
		String country = request.getParameter("country_id");
		locationDTO.setLocation_id(Long.parseLong(id));
		locationDTO.setCity(city);
		locationDTO.setStreet_address(address);
		locationDTO.setPostal_code(code);
		locationDTO.setState_province(state);
		locationDTO.setCountry_id(country);
		
		int result = locationDAO.update(locationDTO);
		
		String str = "지역 수정 실패";
		
		if(result > 0) {
			str = "지역 수정 성공";
		}
		request.setAttribute("result", str);
		
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/commons/result.jsp");
	}

	public void delete(HttpServletRequest request, ActionForward actionForward) throws Exception{
		LocationDTO locationDTO = new LocationDTO();
		locationDTO.setLocation_id(Long.parseLong(request.getParameter("location_id")));
		int result = locationDAO.delete(locationDTO);
		
		String str = "지역 삭제 실패";
		
		if(result > 0) {
			str = "지역 삭제 성공";
		}
		request.setAttribute("result", str);
		
		actionForward.setFlag(true);
		actionForward.setPath("/WEB-INF/views/commons/result.jsp");
	}
}
