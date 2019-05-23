package cn.lyl.ssmqxdemo.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.lyl.ssmqxdemo.model.User;

public interface UserService extends BaseService<User> {
	
	public int insert(User record);

	public int addUser(User user, Integer roleid);

	//关联查询获取用户信息
	public List<User> selectAllUser();
	
	public PageInfo<User> selectUserByPager(int pageNum,int pageSize);
	
	//根据主键查询用户信息
	User selectByPrimaryKey(Integer id);

	public int updateUserAndRole(User user, Integer roleid);

	public int deleteUserAndRole(Integer id);

	public void deleteBatchUser(Integer[] idInt);

	public PageInfo<User> selectUserByusernameOrphone(int pageNum,int pageSize,String username, String phone);
}
