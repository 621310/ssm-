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

	List<User> selectAllUser();

	List<User> selectByusernameOrphone(@Param("username") String username,@Param("phone") String phone);

}