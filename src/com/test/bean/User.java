package com.test.bean;

public class User {
	private Integer id;
	
	private String account;
	
	private String password;
	
	private int status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", account=" + account + ", password=" + password + ", status=" + status + "]";
	}

	public User(Integer id, String account, String password, int status) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.status = status;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
