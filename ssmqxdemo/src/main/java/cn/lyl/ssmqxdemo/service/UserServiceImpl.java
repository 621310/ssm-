package cn.lyl.ssmqxdemo.service;

import java.util.List;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.lyl.ssmqxdemo.mapper.BaseMapper;
import cn.lyl.ssmqxdemo.mapper.UserMapper;
import cn.lyl.ssmqxdemo.mapper.UserRoleMapper;
import cn.lyl.ssmqxdemo.model.User;
import cn.lyl.ssmqxdemo.model.UserRole;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private UserRoleMapper userRoleMapper;
	
	@Override
	public BaseMapper getBaseMapper() {
		// TODO Auto-generated method stub
		return userMapper;
	}
	
	@Override
	public int insert(User record) {
		int insert = userMapper.insert(record);
		return insert;
	}

	@Override
	public int addUser(User user, Integer roleid) {
		//将密码加密后存入数据库
		String pswd = user.getPassword();
		ByteSource pswd1 = ByteSource.Util.bytes(pswd);
		Object pswd2 = new SimpleHash("MD5",pswd1,user.getUsername(),1024);
		user.setPassword(pswd2.toString());
		//向user表中插入一个用户
		int i = userMapper.add("user", new Object[] { null,user.getUsername(),user.getPassword(),user.getEmail(),user.getPhone()});
		//根据插入用户的username获取该用户
		User u = userMapper.seleteByUsername(user.getUsername());
		//根据该用户的ID向user_role表中插入对应数据
		int j = userRoleMapper.add("user_role", new Object[] { null,u.getId(),roleid});
		return i+j;
	}

	@Override
	public List<User> selectAllUser() {
		//查询所有用户，查询得到的数据中有用户的角色信息，是一个关联查询
		List<User> userlist = userMapper.selectAllUser();
		return userlist;
	}

	@Override
	public PageInfo<User> selectUserByPager(int pageNum, int pageSize) {
		Page<User> pager = PageHelper.startPage(pageNum, pageSize);
		List<User> userData = userMapper.selectAllUser();
		PageInfo<User> info = new PageInfo<>(userData);
		return info;
	}

	@Override
	public User selectByPrimaryKey(Integer id) {
		User user = userMapper.selectByPrimaryKey(id);
		return user;
	}

	@Override
	public int updateUserAndRole(User user, Integer roleid) {
		
		if("".equals(user.getUsername().trim())) {
			user.setUsername(null);
		}
		if("".equals(user.getPassword().trim())) {
			user.setPassword(null);
		}
		if("".equals(user.getEmail().trim())) {
			user.setEmail(null);
		}
		if("".equals(user.getPhone().trim())) {
			user.setPhone(null);
		}
		if(user.getPassword() != null) {
			//将密码加密后存入数据库
			String pswd = user.getPassword();
			ByteSource pswd1 = ByteSource.Util.bytes(pswd);
			Object pswd2 = new SimpleHash("MD5",pswd1,user.getUsername(),1024);
			user.setPassword(pswd2.toString());
		}
		int i = userMapper.updateByPrimaryKeySelective(user);//修改用户信息
		UserRole userrole = userRoleMapper.selectIdByUid(user.getId());//根据用户ID获取角色对象
		if("".equals(roleid)) {
			roleid = null;
		}
		userrole.setRid(roleid);
		int j = userRoleMapper.updateByPrimaryKeySelective(userrole);//修改角色信息
		
		return i+j;
	}

	@Override
	public int deleteUserAndRole(Integer id) {
		UserRole userrole = userRoleMapper.selectIdByUid(id);
		int i = userRoleMapper.deleteByPrimaryKey(userrole.getId());
		int j = userMapper.deleteByPrimaryKey(id);
		return i+j;
	}

	@Override
	public void deleteBatchUser(Integer[] idInt) {
		for(Integer id:idInt) {
			this.deleteUserAndRole(id);
		}
	}

	@Override
	public PageInfo<User> selectUserByusernameOrphone(int pageNum,int pageSize,String username, String phone) {
		Page<User> pager = PageHelper.startPage(pageNum, pageSize);
		List<User> userdatas = userMapper.selectByusernameOrphone("%"+username+"%","%"+phone+"%"); 
		PageInfo<User> info = new PageInfo<>(userdatas);
		return info;
	}



	



	

	

}
