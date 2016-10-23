package com.moon.bushsniper.bean;

import java.io.Serializable;

public class Role implements Serializable {

	private static final long serialVersionUID = -8365865140669089889L;
	private int id;
	private String roleName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

}
