package com.spring.persistence;

import java.util.List;

import com.spring.domain.RoutineDTO;

public interface RoutineMapper {

	public List<RoutineDTO> getEventsByEmail(String email);

	public void insert(RoutineDTO dto);

	public int update(RoutineDTO dto);
	
	public int delete(int routineNo);


}
