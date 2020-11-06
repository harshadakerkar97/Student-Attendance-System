package com.cdac.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.StudentDao;
import com.cdac.dto.Student;

@Service
public class StudentServiceImple implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	@Override
	public void register(Student student) {
		studentDao.registerStudent(student);
	}

	@Override
	public boolean loginStud(Student student) {
		System.out.println("login method");
		return studentDao.loginStudent(student);
	}

	@Override
	public void deleteStudent(int studentId) {
		studentDao.removeStudent(studentId);
	}

	@Override
	public Student getStudent(int studentId) {
		return studentDao.findStudent(studentId);
	}

	@Override
	public void modifyStudent(Student student) {
		studentDao.updateStudent(student);
	}

	@Override
	public String getStudent(String email) {
		return studentDao.getEmail(email);
	}

}
