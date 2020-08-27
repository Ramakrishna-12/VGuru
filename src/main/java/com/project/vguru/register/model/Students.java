package com.project.vguru.register.model;

public class Students {
	
	private String name;
	private String phone;
	private String parentemail;
	
	private String email;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getParentemail() {
		return parentemail;
	}
	public void setParentemail(String parentemail) {
		this.parentemail = parentemail;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Students [name=" + name + ", phone=" + phone + ", parentemail=" + parentemail + ", email=" + email
				+ ", password=" + password + "]";
	}
	
	

}
