package com.spring.persistence;

import org.apache.ibatis.annotations.Select;

import com.spring.domain.NavAddressDTO;

public interface NavAddressMapper {

	Object findByNameAndTude(String addName, double latitude, double latitude2);
	
	@Select("SELECT addressNo FROM navAddress WHERE addressNo = #{addressNo}")
	public NavAddressDTO selectByAddressNo(int addressNo);
	
	NavAddressDTO insert(NavAddressDTO navAddressDTO);

}
