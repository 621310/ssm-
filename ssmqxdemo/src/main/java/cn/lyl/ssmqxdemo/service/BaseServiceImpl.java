package cn.lyl.ssmqxdemo.service;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import cn.lyl.ssmqxdemo.mapper.BaseMapper;
import cn.lyl.ssmqxdemo.tools.MapToEntityTool;

public abstract class BaseServiceImpl<T> implements BaseService<T> {

	//留给子类去实现
	public abstract BaseMapper getBaseMapper();
	
	public Class<?> clazz;
	public String tableName;
	
	public BaseServiceImpl() {
		Type type = this.getClass().getGenericSuperclass();
		ParameterizedType pt = (ParameterizedType) type;
		Type[] types = pt.getActualTypeArguments();
		clazz = (Class<?>) types[0];
		 tableName = clazz.getSimpleName().toLowerCase();
	}
	
	@Override
	public void add(T t) {
		// TODO Auto-generated method stub
		List<Object> list = new ArrayList<>();
		for(Field field:t.getClass().getDeclaredFields()) {
			field.setAccessible(true);
			try {
				list.add(field.get(t));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		getBaseMapper().add(tableName, list.toArray());
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getBaseMapper().delete(tableName, id);
	}

	@Override
	public void update(T t) {
		// TODO Auto-generated method stub
		List<Object> list = new ArrayList<>();
		int id = 0;
		for(Field field:t.getClass().getDeclaredFields()) {
			field.setAccessible(true);
			try {
				if(field.get(t) == null) {
					continue;
				}
				if("id".equals(field.getName())) {
					id = (int) field.get(t);
					continue;
				}
				list.add(field.getName()+"='"+field.get(t)+"'");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		getBaseMapper().update(tableName, id, list.toArray());
	}

	@Override
	public T selectOne(Integer id) {
		// TODO Auto-generated method stub
		Map<Object, Object> rsMap = getBaseMapper().selectOne(tableName, id);
		T t = (T) MapToEntityTool.map2Entity(rsMap, clazz);
		return t;
	}

	@Override
	public List<T> selectAll() {
		// TODO Auto-generated method stub
		List<Map<Object, Object>> rsList = getBaseMapper().selectAll(tableName);
		List<T> list = new ArrayList<>();
		T t = null;
		for(Map<Object, Object> map:rsList) {
			t = (T) MapToEntityTool.map2Entity(map,clazz);
			list.add(t);
		}
		return list;
	}

}
