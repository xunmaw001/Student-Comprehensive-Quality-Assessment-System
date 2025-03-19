package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WodexuexiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WodexuexiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WodexuexiView;


/**
 * 我的学习
 *
 * @author 
 * @email 
 * @date 2021-04-16 20:05:03
 */
public interface WodexuexiService extends IService<WodexuexiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WodexuexiVO> selectListVO(Wrapper<WodexuexiEntity> wrapper);
   	
   	WodexuexiVO selectVO(@Param("ew") Wrapper<WodexuexiEntity> wrapper);
   	
   	List<WodexuexiView> selectListView(Wrapper<WodexuexiEntity> wrapper);
   	
   	WodexuexiView selectView(@Param("ew") Wrapper<WodexuexiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WodexuexiEntity> wrapper);
   	
}

