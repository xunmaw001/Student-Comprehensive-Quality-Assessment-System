package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.WodexuexiDao;
import com.entity.WodexuexiEntity;
import com.service.WodexuexiService;
import com.entity.vo.WodexuexiVO;
import com.entity.view.WodexuexiView;

@Service("wodexuexiService")
public class WodexuexiServiceImpl extends ServiceImpl<WodexuexiDao, WodexuexiEntity> implements WodexuexiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WodexuexiEntity> page = this.selectPage(
                new Query<WodexuexiEntity>(params).getPage(),
                new EntityWrapper<WodexuexiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WodexuexiEntity> wrapper) {
		  Page<WodexuexiView> page =new Query<WodexuexiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WodexuexiVO> selectListVO(Wrapper<WodexuexiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WodexuexiVO selectVO(Wrapper<WodexuexiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WodexuexiView> selectListView(Wrapper<WodexuexiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WodexuexiView selectView(Wrapper<WodexuexiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
