package cn.lyl.ssmqxdemo.model;

import java.io.Serializable;
import java.util.List;

public class Role implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String rolename;
    
    private String code;
    
    private List<Resource> resource;

	public List<Resource> getResource() {
		return resource;
	}

	public void setResource(List<Resource> resource) {
		this.resource = resource;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	
	
	@Override
	public String toString() {
		return "Role [id=" + id + ", rolename=" + rolename + ", code=" + code + ", resource=" + resource + "]";
	}

	
    
}