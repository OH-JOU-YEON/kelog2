package com.spring.persistence;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

import com.spring.domain.NavAddressDTO;

//이 클래스는 수정을 하지 않음 생성아니면 삭제임 수정은 서비스차원에서 처리 

@Mapper 
public interface NavAddressMapper {
	
	//DTO 받아서 생성하는 로직 
	
	public NavAddressDTO insert(NavAddressDTO dto);
	
	
	public NavAddressDTO findByNameAndTude(String addName, double latitude, double longitude); 
		
	
	//번호로 삭제하는 로직 
	
	@Delete("DELETE FROM NavAddress WHERE addressNo = #{addressNo}")	
	public int delete(int addressNo);

}
