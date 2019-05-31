package cn.lyl.ssmqxdemo.service.shiro;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import cn.lyl.ssmqxdemo.mapper.ResourceMapper;
import cn.lyl.ssmqxdemo.model.Resource;

public class FilterChainDefinitionMapFactory {
	
	@Autowired
	private ResourceMapper resourceMapper;
	
	public Map<String, String> getFilterChainDefinitionMap(){
		List<Resource> resources = resourceMapper.selectAllResource();
		LinkedHashMap<String,String> resMap = new LinkedHashMap<>();
		for(Resource res:resources) {
			resMap.put(res.getUrl(), res.getResname());
		}
		System.out.println(resMap);
		return resMap;
	}
}
