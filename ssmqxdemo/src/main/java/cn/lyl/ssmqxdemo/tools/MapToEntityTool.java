package cn.lyl.ssmqxdemo.tools;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MapToEntityTool {

	/**
	 * �������������Ϣ
	 */
	private static Map<String, EntityCacheItem> convertItemCache = new HashMap<>();

	public static <T> T map2Entity(Map<Object, Object> map, Class<T> entityClass) {
		EntityCacheItem ci = convertItemCache.get(entityClass.getName());
		if (ci == null) {
			ci = EntityCacheItem.createConvertItem(entityClass);
			convertItemCache.put(entityClass.getName(), ci);
		}
		
		
		// entityClass�õ����������Ķ������������List����
		List<String> allFieldList = ci.getFieldNameList();
		// entityClass�õ����������Ķ����set����Map����
		Map<String, Method> setMethodMap = ci.getSetMethodMap();
		
		// ��map���ֵ���ŵ�entity������
		T entity = null;
		try {
			entity = entityClass.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

		Object fieldVale = null;
		Method setM = null;
		Class<?>[] paramTypes = null;
		for (String strFieldName : allFieldList) {
			fieldVale = map.get(strFieldName);
			if (fieldVale == null)
				continue;
			setM = setMethodMap.get(strFieldName);
			if (setM == null)
				continue;
			paramTypes = setM.getParameterTypes();

			if(paramTypes == null || paramTypes.length>1) {
				continue;
			}
			if(paramTypes[0].isAssignableFrom(fieldVale.getClass())) {
				//һ��
				try {
					setM.invoke(entity, fieldVale);
				} catch (Exception e) {
					e.printStackTrace();
					return null;
				}
			}
		}

		return entity;
	}
	
	static class EntityCacheItem{
		private List<String> fieldNameList = new ArrayList<>();
		private Map<String, Method> setMethodMap = new HashMap<>();
		
		public List<String> getFieldNameList() {
			return fieldNameList;
		}
		public Map<String, Method> getSetMethodMap() {
			return setMethodMap;
		}
		
		public void parseEntry(Class<?> entityClass) {
			Field[] allFields = entityClass.getDeclaredFields();
			String setMethodName;
			String fieldName;
			Method setMethod = null;
			for (Field field : allFields) {
				field.setAccessible(true);
				fieldName = field.getName();
				fieldNameList.add(fieldName);
				setMethodName = "set" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
				try {
					setMethod = entityClass.getDeclaredMethod(setMethodName, field.getType());
				} catch (Exception e) {
					e.printStackTrace();
				} 
				setMethodMap.put(fieldName, setMethod);
			}
		}
		public static EntityCacheItem createConvertItem(Class<?> cls) {
			EntityCacheItem ci = new EntityCacheItem();
			ci.parseEntry(cls);
			return ci;
		}
	}
}
