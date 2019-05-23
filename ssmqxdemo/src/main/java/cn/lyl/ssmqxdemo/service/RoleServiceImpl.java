package cn.lyl.ssmqxdemo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lyl.ssmqxdemo.mapper.BaseMapper;
import cn.lyl.ssmqxdemo.mapper.RoleMapper;
import cn.lyl.ssmqxdemo.model.Role;

@Service("roleService")
public class RoleServiceImpl extends BaseServiceImpl<Role> implements RoleService {

	@Autowired
	private RoleMapper roleMapper;
	
	@Override
	public BaseMapper getBaseMapper() {
		// TODO Auto-generated method stub
		return roleMapper;
	}

}
