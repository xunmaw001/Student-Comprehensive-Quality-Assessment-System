package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusssuzhixuexiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusssuzhixuexiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusssuzhixuexiView;


/**
 * 素质学习评论表
 *
 * @author 
 * @email 
 * @date 2021-04-16 20:05:03
 */
public interface DiscusssuzhixuexiService extends IService<DiscusssuzhixuexiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusssuzhixuexiVO> selectListVO(Wrapper<DiscusssuzhixuexiEntity> wrapper);
   	
   	DiscusssuzhixuexiVO selectVO(@Param("ew") Wrapper<DiscusssuzhixuexiEntity> wrapper);
   	
   	List<DiscusssuzhixuexiView> selectListView(Wrapper<DiscusssuzhixuexiEntity> wrapper);
   	
   	DiscusssuzhixuexiView selectView(@Param("ew") Wrapper<DiscusssuzhixuexiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusssuzhixuexiEntity> wrapper);
   	
}

