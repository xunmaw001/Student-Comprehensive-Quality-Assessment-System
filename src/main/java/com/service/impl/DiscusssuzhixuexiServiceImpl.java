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


import com.dao.DiscusssuzhixuexiDao;
import com.entity.DiscusssuzhixuexiEntity;
import com.service.DiscusssuzhixuexiService;
import com.entity.vo.DiscusssuzhixuexiVO;
import com.entity.view.DiscusssuzhixuexiView;

@Service("discusssuzhixuexiService")
public class DiscusssuzhixuexiServiceImpl extends ServiceImpl<DiscusssuzhixuexiDao, DiscusssuzhixuexiEntity> implements DiscusssuzhixuexiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusssuzhixuexiEntity> page = this.selectPage(
                new Query<DiscusssuzhixuexiEntity>(params).getPage(),
                new EntityWrapper<DiscusssuzhixuexiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusssuzhixuexiEntity> wrapper) {
		  Page<DiscusssuzhixuexiView> page =new Query<DiscusssuzhixuexiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusssuzhixuexiVO> selectListVO(Wrapper<DiscusssuzhixuexiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusssuzhixuexiVO selectVO(Wrapper<DiscusssuzhixuexiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusssuzhixuexiView> selectListView(Wrapper<DiscusssuzhixuexiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusssuzhixuexiView selectView(Wrapper<DiscusssuzhixuexiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
