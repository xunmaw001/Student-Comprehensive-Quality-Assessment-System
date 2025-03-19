package com.dao;

import com.entity.DiscusssuzhixuexiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusssuzhixuexiVO;
import com.entity.view.DiscusssuzhixuexiView;


/**
 * 素质学习评论表
 * 
 * @author 
 * @email 
 * @date 2021-04-16 20:05:03
 */
public interface DiscusssuzhixuexiDao extends BaseMapper<DiscusssuzhixuexiEntity> {
	
	List<DiscusssuzhixuexiVO> selectListVO(@Param("ew") Wrapper<DiscusssuzhixuexiEntity> wrapper);
	
	DiscusssuzhixuexiVO selectVO(@Param("ew") Wrapper<DiscusssuzhixuexiEntity> wrapper);
	
	List<DiscusssuzhixuexiView> selectListView(@Param("ew") Wrapper<DiscusssuzhixuexiEntity> wrapper);

	List<DiscusssuzhixuexiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusssuzhixuexiEntity> wrapper);
	
	DiscusssuzhixuexiView selectView(@Param("ew") Wrapper<DiscusssuzhixuexiEntity> wrapper);
	
}
