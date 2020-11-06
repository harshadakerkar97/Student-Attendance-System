package com.cdac.dto;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Value;

@Entity
@Table(name="attendance")
public class Attendance {
	@Id
	@GeneratedValue
	private int attendance_id;
	@Column(name="student_id")
	private int studentId;
	private String subject;
	@Column(name="record")
	private String action;
	@Value("2020-11-04")
	@Column(name="date")
	private String date;
	

	public Attendance() {
		super();
		action="absent";
		
	}

	public Attendance(int studentId) {
		super();
		this.studentId =studentId;
	}

	public Attendance(int studentId, String subject, String action) {
		super();
		this.studentId = studentId;
		this.subject = subject;
		
	}

	
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getAttendance_id() {
		return attendance_id;
	}

	public void setAttendance_id(int attendance_id) {
		this.attendance_id = attendance_id;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	@Override
	public String toString() {
		return "attendance_id=" + attendance_id + ", studentId=" + studentId+ ", subject=" + subject + ", action=" + action + "]";
	}
	
	
	
}