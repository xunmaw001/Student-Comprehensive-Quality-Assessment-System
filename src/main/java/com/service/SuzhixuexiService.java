package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.SuzhixuexiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.SuzhixuexiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.SuzhixuexiView;


/**
 * 素质学习
 *
 * @author 
 * @email 
 * @date 2021-04-16 20:05:03
 */
public interface SuzhixuexiService extends IService<SuzhixuexiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<SuzhixuexiVO> selectListVO(Wrapper<SuzhixuexiEntity> wrapper);
   	
   	SuzhixuexiVO selectVO(@Param("ew") Wrapper<SuzhixuexiEntity> wrapper);
   	
   	List<SuzhixuexiView> selectListView(Wrapper<SuzhixuexiEntity> wrapper);
   	
   	SuzhixuexiView selectView(@Param("ew") Wrapper<SuzhixuexiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<SuzhixuexiEntity> wrapper);
   	
}

