package com.model;

public class Job {
	private String category;
	private String image;
	private String salary;
	private String startdate;
	private String enddate;
	public Job() {
	}
	public Job(String category, String image, String salary, String startdate, String enddate) {
		super();
		this.category = category;
		this.image = image;
		this.salary = salary;
		this.startdate = startdate;
		this.enddate = enddate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	
}
