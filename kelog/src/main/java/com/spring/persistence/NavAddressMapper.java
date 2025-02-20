package com.spring.persistence;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

import com.spring.domain.NavAddressDTO;

//�� Ŭ������ ������ ���� ���� �����ƴϸ� ������ ������ ������������ ó�� 

@Mapper 
public interface NavAddressMapper {
	
	//DTO �޾Ƽ� �����ϴ� ���� 
	
	public NavAddressDTO insert(NavAddressDTO dto);
	
	
	public NavAddressDTO findByNameAndTude(String addName, double latitude, double longitude); 
		
	
	//��ȣ�� �����ϴ� ���� 
	
	@Delete("DELETE FROM NavAddress WHERE addressNo = #{addressNo}")	
	public int delete(int addressNo);

}
