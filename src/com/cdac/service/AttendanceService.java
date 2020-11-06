package com.cdac.service;

import java.util.List;

import com.cdac.dto.Attendance;
import com.cdac.dto.Student;

public interface AttendanceService {
	public List<Student> showAll();
	public void addAttendace(Attendance att);
	public List<Attendance> attendanceList(String subject, String date);
	public Attendance findAttendance(int att_id, String subject, String oldDate);
	public void addNew(Attendance att);
	public void deleteRecord(int studentId);
}
