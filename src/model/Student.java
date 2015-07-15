package model;

public class Student {
	private String id;
	private String name;
	private int gender;
	private String classroom;
	private String university;
	private int status;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
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
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Student(){
		
	}
	public Student(String id, String name, int gender,  String university,String classroom, int status) {
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.classroom = classroom;
		this.university = university;
		this.status = status;
	}
	
}
