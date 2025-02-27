package com.spring.service;

public interface GenericService<DTO, K> {
	
	public void created(DTO dto);
	
	public DTO read(K key);
	
	public int delete(K key);
	
	public int modify(DTO dto);
}
