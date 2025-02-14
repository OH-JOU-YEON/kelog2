package com.spring.service;

import java.util.List;

import com.spring.domain.TravelPostDTO;

public interface TravelService extends GenericService<TravelPostDTO, Integer> {

	public List<TravelPostDTO> listAll();

}
