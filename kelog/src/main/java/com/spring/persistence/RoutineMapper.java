package com.spring.persistence;

import java.util.List;

import com.spring.domain.RoutineDTO;

public interface RoutineMapper {

	List<RoutineDTO> getEventsByUserId(String email);

	void insert(RoutineDTO dto);

	int modify(RoutineDTO dto);
	
	int delete(int routineNo);


}
