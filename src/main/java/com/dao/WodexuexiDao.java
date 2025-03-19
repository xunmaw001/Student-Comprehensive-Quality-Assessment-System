package com.dao;

import com.entity.WodexuexiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WodexuexiVO;
import com.entity.view.WodexuexiView;


/**
 * 我的学习
 * 
 * @author 
 * @email 
 * @date 2021-04-16 20:05:03
 */
public interface WodexuexiDao extends BaseMapper<WodexuexiEntity> {
	
	List<WodexuexiVO> selectListVO(@Param("ew") Wrapper<WodexuexiEntity> wrapper);
	
	WodexuexiVO selectVO(@Param("ew") Wrapper<WodexuexiEntity> wrapper);
	
	List<WodexuexiView> selectListView(@Param("ew") Wrapper<WodexuexiEntity> wrapper);

	List<WodexuexiView> selectListView(Pagination page,@Param("ew") Wrapper<WodexuexiEntity> wrapper);
	
	WodexuexiView selectView(@Param("ew") Wrapper<WodexuexiEntity> wrapper);
	
}
