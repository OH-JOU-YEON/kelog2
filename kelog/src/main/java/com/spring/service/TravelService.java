package com.spring.service;

import java.util.List;

import com.spring.domain.TravelPostDTO;

public interface TravelService extends GenericService<TravelPostDTO, Integer> {

	public List<TravelPostDTO> listAll();

	public int modify(TravelPostDTO dto);

	public int uplikecount(Integer travelBoardNo);

	public int downlikecount(Integer travelBoardNo);
}
