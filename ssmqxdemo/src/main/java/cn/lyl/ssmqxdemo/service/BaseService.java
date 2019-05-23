package cn.lyl.ssmqxdemo.service;

import java.util.List;

public interface BaseService<T> {
		
	public void add(T t);
	
	public void delete(Integer id);
	
	public void update(T t);
	
	public T selectOne(Integer id);
	
	public List<T> selectAll();
}
