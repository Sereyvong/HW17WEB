package model;

public class Student {
	private int id;
	private String name;
	private int gender;
	private String classroom;
	private String school;
	private int status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getClassroom() {
		return classroom;
	}
	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Student(int id, String name, int gender, String classroom, String school, int status) {
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.classroom = classroom;
		this.school = school;
		this.status = status;
	}
	
}
