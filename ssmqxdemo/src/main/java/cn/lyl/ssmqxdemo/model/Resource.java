package cn.lyl.ssmqxdemo.model;

public class Resource {
    private Integer id;

    private String resname;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getResname() {
		return resname;
	}

	public void setResname(String resname) {
		this.resname = resname;
	}

	@Override
	public String toString() {
		return "Resource [id=" + id + ", resname=" + resname + "]";
	}

    
}