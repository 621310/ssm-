package cn.lyl.ssmqxdemo.service;

import org.springframework.beans.factory.annotation.Autowired;

import cn.lyl.ssmqxdemo.mapper.BaseMapper;
import cn.lyl.ssmqxdemo.mapper.ResourceMapper;
import cn.lyl.ssmqxdemo.model.Resource;

public class ResourceServiceImpl extends BaseServiceImpl<Resource> implements ResourceService {

	@Autowired
	private ResourceMapper resourceMapper;
	
	@Override
	public BaseMapper getBaseMapper() {
		// TODO Auto-generated method stub
		return resourceMapper;
	}

}
