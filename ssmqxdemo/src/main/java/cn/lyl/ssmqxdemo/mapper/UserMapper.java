package cn.lyl.ssmqxdemo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.lyl.ssmqxdemo.model.User;

public interface UserMapper extends BaseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User seleteByUsername(@Param("username")String username);

    //查询所有用户,包括用户的角色信息
	List<User> selectAllUser();

	//用户名和phone模糊查询
	List<User> selectByusernameOrphone(@Param("username") String username,@Param("phone") String phone);

}