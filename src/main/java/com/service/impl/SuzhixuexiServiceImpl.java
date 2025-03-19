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


import com.dao.SuzhixuexiDao;
import com.entity.SuzhixuexiEntity;
import com.service.SuzhixuexiService;
import com.entity.vo.SuzhixuexiVO;
import com.entity.view.SuzhixuexiView;

@Service("suzhixuexiService")
public class SuzhixuexiServiceImpl extends ServiceImpl<SuzhixuexiDao, SuzhixuexiEntity> implements SuzhixuexiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SuzhixuexiEntity> page = this.selectPage(
                new Query<SuzhixuexiEntity>(params).getPage(),
                new EntityWrapper<SuzhixuexiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<SuzhixuexiEntity> wrapper) {
		  Page<SuzhixuexiView> page =new Query<SuzhixuexiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<SuzhixuexiVO> selectListVO(Wrapper<SuzhixuexiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public SuzhixuexiVO selectVO(Wrapper<SuzhixuexiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<SuzhixuexiView> selectListView(Wrapper<SuzhixuexiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public SuzhixuexiView selectView(Wrapper<SuzhixuexiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
