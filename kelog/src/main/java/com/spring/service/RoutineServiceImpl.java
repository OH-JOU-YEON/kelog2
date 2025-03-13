package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.RoutineDTO;
import com.spring.persistence.RoutineMapper;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RoutineServiceImpl implements RoutineService {
	
    private final RoutineMapper mapper;

    @Override
    public List<RoutineDTO> getdtoByEmail(String email) {
        return mapper.getdtoByEmail(email);  // 이메일로 일정 가져오기
    }

    @Override
    public void created(RoutineDTO dto) {
        mapper.insert(dto);  // 일정 저장
    }

    @Override
    public int modify(RoutineDTO dto) {
        return mapper.update(dto);
    }

    @Override
    public int delete(int routineNo) {
    	return mapper.delete(routineNo);  // 일정 삭제
    }
	
}
