package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Attendance;
import com.cdac.dto.Student;

public interface AttendanceDao {
	public List<Attendance> showSubjectWiseAttendace(String subject, String date);
	public List<Student> showList();
	public void addStudentAttendance(Attendance att);
	public Attendance getAttendance(int att_id, String subject,String oldDate);
	public void addNewStudent(Attendance attendance);
	public void delete_record(int studentId);
}
