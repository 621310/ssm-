package cn.lyl.ssmqxdemo.mapper;

import java.util.List;

import cn.lyl.ssmqxdemo.model.Resource;

public interface ResourceMapper extends BaseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Resource record);

    int insertSelective(Resource record);

    Resource selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Resource record);

    int updateByPrimaryKey(Resource record);

	List<Resource> selectAllResource();
}