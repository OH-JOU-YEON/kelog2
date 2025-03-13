package com.spring.service;

import java.util.List;

import com.spring.domain.RoutineDTO;

public interface RoutineService{

	public List<RoutineDTO> getdtoByEmail(String email);

	public void created(RoutineDTO dto);

	public int modify(RoutineDTO dto);
	
	public int delete(int routineNo);

}
