package cn.lyl.ssmqxdemo.model;

public class Resource {
    private Integer id;

    private String resname;
    
    private String url;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

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
		return "Resource [id=" + id + ", resname=" + resname + ", url=" + url + "]";
	}


    
}