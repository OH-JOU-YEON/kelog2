package com.spring.persistence;

import com.spring.domain.NavAddressDTO;

public interface NavAddressMapper {

	Object findByNameAndTude(String addName, double latitude, double latitude2);
	
	
	
	NavAddressDTO insert(NavAddressDTO navAddressDTO);

}
