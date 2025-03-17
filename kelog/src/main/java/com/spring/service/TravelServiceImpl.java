package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.Criteria;
import com.spring.domain.Criteria2;
import com.spring.domain.TravelPostDTO;
import com.spring.persistence.TravelPostMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
@Service
@RequiredArgsConstructor
@Log4j
public class TravelServiceImpl implements TravelService {
	
	private final TravelPostMapper mapper;
	
	@Override
	public void created(TravelPostDTO dto) {
		mapper.insert(dto);
	}

	@Override
	public TravelPostDTO read(Integer key) {
		return mapper.read(key);
	}
	
	@Override
	public int delete(Integer key) {
		return mapper.delete(key);
	}

	@Override
	public List<TravelPostDTO> listAll() {
		return mapper.readAll();
	}

	@Override
	public int modify(TravelPostDTO dto) {
		return mapper.update(dto);
	}

	// 좋아요
	
	@Override
	public int uplikecount(Integer travelBoardNo, int uno) {
		addLike(uno, travelBoardNo);
        return mapper.upLikecount(travelBoardNo);
	}
	@Override
	public int unlikecount(Integer travelBoardNo,int uno) {
		removeLike(uno, travelBoardNo);
        return mapper.unLikecount(travelBoardNo);
	}
	
	@Override
	public boolean isUserLikedTravelPost(int uno, Integer travelBoardNo) {
		return mapper.isLike(uno,travelBoardNo);
	}
	
    public void addLike(int uno, Integer travelBoardNo) {
        mapper.addlike(uno, travelBoardNo);
    }
	
    public void removeLike(int uno, Integer travelBoardNo) {
        mapper.removelike(uno, travelBoardNo);
    }

    // 싫어요
    
	@Override
	public int upunlikecount(Integer travelBoardNo, int uno) {
		addunLike(uno, travelBoardNo);
		return mapper.upunLikecount(travelBoardNo);
	}

	@Override
	public int ununlikecount(Integer travelBoardNo, int uno) {
		removeunLike(uno, travelBoardNo);
		return mapper.ununLikecount(travelBoardNo);
	}    
    
	@Override
	public boolean isUserunLikedTravelPost(int uno, Integer travelBoardNo) {
		return mapper.isunLike(uno,travelBoardNo);
	}
	
    public void addunLike(int uno, Integer travelBoardNo) {
        mapper.addunlike(uno, travelBoardNo);
    }
	
    public void removeunLike(int uno, Integer travelBoardNo) {
        mapper.removeunlike(uno, travelBoardNo);
    }

	@Override
	public int getTotal() {
		return mapper.getTotalCount();
	}

	@Override
	public List<TravelPostDTO> getList(Criteria2 cri) {
		List<TravelPostDTO> result = mapper.listwithPasing(cri);
		return result;
	}
    
}
