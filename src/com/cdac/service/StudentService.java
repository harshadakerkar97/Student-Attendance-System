package com.cdac.service;


import com.cdac.dto.Student;

public interface StudentService {
	public void register(Student student);
	public boolean loginStud(Student student);
	public void deleteStudent(int studentId);
	public Student getStudent(int studentId);
	public void modifyStudent(Student student);
	public String getStudent(String email);
}
