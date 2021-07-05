package com.model;

public class User {
	
	private String username;
	private String password;
	private boolean isSeeker=false;
	private boolean isProvider=false;
	public User() {
		
	}
	public User(String username, String password, boolean isSeeker, boolean isProvider) {
		super();
		this.username = username;
		this.password = password;
		this.isSeeker = isSeeker;
		this.isProvider = isProvider;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isSeeker() {
		return isSeeker;
	}
	public void setSeeker(boolean isSeeker) {
		this.isSeeker = isSeeker;
	}
	public boolean isProvider() {
		return isProvider;
	}
	public void setProvider(boolean isProvider) {
		this.isProvider = isProvider;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", isSeeker=" + isSeeker + ", isProvider="
				+ isProvider + "]";
	}

}
