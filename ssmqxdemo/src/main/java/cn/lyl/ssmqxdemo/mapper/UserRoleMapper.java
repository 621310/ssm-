package cn.lyl.ssmqxdemo.mapper;

import org.apache.ibatis.annotations.Param;

import cn.lyl.ssmqxdemo.model.UserRole;

public interface UserRoleMapper extends BaseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);
    
    //ͨ���û�ID��ѯ����ID
    UserRole selectIdByUid(@Param("uid") Integer uid);
}