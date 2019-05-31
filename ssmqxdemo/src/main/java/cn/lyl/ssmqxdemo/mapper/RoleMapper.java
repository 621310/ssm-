package cn.lyl.ssmqxdemo.mapper;

import org.apache.ibatis.annotations.Param;

import cn.lyl.ssmqxdemo.model.Resource;
import cn.lyl.ssmqxdemo.model.Role;

public interface RoleMapper extends BaseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
    
    public Role selectRoleByRoleId(@Param("rid") Integer rid);
    
}