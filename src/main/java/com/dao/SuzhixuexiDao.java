package com.dao;

import com.entity.SuzhixuexiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.SuzhixuexiVO;
import com.entity.view.SuzhixuexiView;


/**
 * 素质学习
 * 
 * @author 
 * @email 
 * @date 2021-04-16 20:05:03
 */
public interface SuzhixuexiDao extends BaseMapper<SuzhixuexiEntity> {
	
	List<SuzhixuexiVO> selectListVO(@Param("ew") Wrapper<SuzhixuexiEntity> wrapper);
	
	SuzhixuexiVO selectVO(@Param("ew") Wrapper<SuzhixuexiEntity> wrapper);
	
	List<SuzhixuexiView> selectListView(@Param("ew") Wrapper<SuzhixuexiEntity> wrapper);

	List<SuzhixuexiView> selectListView(Pagination page,@Param("ew") Wrapper<SuzhixuexiEntity> wrapper);
	
	SuzhixuexiView selectView(@Param("ew") Wrapper<SuzhixuexiEntity> wrapper);
	
}
