package com.cdac.dao;

import com.cdac.dto.Student;

public interface StudentDao {
	public void registerStudent(Student student);
	public void updateStudent(Student student);
	public void removeStudent(int studentId);
	public boolean loginStudent(Student student);
	public Student findStudent(int studentId);
	public String getEmail(String email);
}
