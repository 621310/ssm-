package cn.lyl.ssmqxdemo.service.shiro;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import cn.lyl.ssmqxdemo.mapper.RoleMapper;
import cn.lyl.ssmqxdemo.mapper.UserMapper;
import cn.lyl.ssmqxdemo.model.Resource;
import cn.lyl.ssmqxdemo.model.Role;
import cn.lyl.ssmqxdemo.model.User;

public class ShiroRealm extends AuthorizingRealm {
	
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RoleMapper roleMapper;
	
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token1) throws AuthenticationException {
		//把token对象强转成UsernamePasswordToken
		UsernamePasswordToken token = (UsernamePasswordToken) token1;
		//2从token里获取用户名
  		String username = token.getUsername();
		//3查询数据库记录
		User user = userMapper.seleteByUsername(username);
		if(user == null) {
			throw new UnknownAccountException("用户不存在！");
		}
		//判断密码是否正确
		ByteSource slat = ByteSource.Util.bytes(username);
		AuthenticationInfo info = new SimpleAuthenticationInfo(user,user.getPassword(),slat,getName());
		return info;
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection UserRelRoleMap) {
		//从参数中获取登陆成功后的用户信息
		User user = UserRelRoleMap.oneByType(User.class);
		Role role = user.getRole();
		//根据角色获取权限集合
		Role role2 = roleMapper.selectRoleByRoleId(role.getId());
		List<Resource> resources = role2.getResource();
		List<String> list = new ArrayList<String>();
		for(Resource resource:resources) {
			//list.add(resource.getUrl());
			if(resource.getResname().contains("perms[")) {
				list.add(resource.getResname().substring(6, resource.getResname().length()-1));
			}
		}
		System.out.println(list);
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.addRole(role.getCode());
		info.addStringPermissions(list);
		return info;
	}


}
