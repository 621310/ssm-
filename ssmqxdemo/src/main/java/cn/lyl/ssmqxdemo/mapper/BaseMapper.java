package cn.lyl.ssmqxdemo.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface BaseMapper {
	
	
	public int add(@Param("tableName") String tableName,@Param("objects") Object[] objects);
	
	public void delete(@Param("tableName") String tableName,@Param("id") Integer id);
	
	public void update(@Param("tableName") String tableName,@Param("id") Integer id,@Param("objects") Object[] objects);
	
	public Map<Object, Object> selectOne(@Param("tableName") String tableName,@Param("id") Integer id);
	
	public List<Map<Object, Object>> selectAll(@Param("tableName") String tableName);
}
