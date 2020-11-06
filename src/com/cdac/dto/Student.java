package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {
	@Id
	@Column(name="student_id")
	private int studentId;
	@Column(name="student_name")
	private String studentName;
	@Column(name="student_pass")
	private String studentPass;
	@Column(name="student_semister")
	private String semister;
	@Column(name="email", unique = true)
	private String email;
	@Column(name="contact_no")
	private String contact_no;
	public String getContact_no() {
		return contact_no;
	}

	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	private String subject;
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Student(int studentId) {
		super();
		this.studentId = studentId;
	}

	public Student(int studentId, String studentName, String studentPass, String semister) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentPass = studentPass;
		this.semister = semister;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentPass() {
		return studentPass;
	}

	public void setStudentPass(String studentPass) {
		this.studentPass = studentPass;
	}

	public String getSemister() {
		return semister;
	}

	public void setSemister(String semister) {
		this.semister = semister;
	}

	@Override
	public String toString() {
		return "studentId=" + studentId + ", studentName=" + studentName + ", studentPass=" + studentPass
				+ ", semister=" + semister + ", email=" + email + ", contact_no=" + contact_no + ", subject=" + subject;
	}

	
}
