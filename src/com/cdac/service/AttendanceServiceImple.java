package com.cdac.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.AttendanceDao;
import com.cdac.dto.Attendance;
import com.cdac.dto.Student;

@Service
public class AttendanceServiceImple implements AttendanceService {

	@Autowired
	private AttendanceDao attendanceDao;

	@Override
	public List<Student> showAll() {
		return attendanceDao.showList();
	}


	@Override
	public void addAttendace(Attendance att) {
		attendanceDao.addStudentAttendance(att);	
	}

	@Override
	public List<Attendance> attendanceList(String subject,String date) {
		return attendanceDao.showSubjectWiseAttendace(subject,date);
	}

	@Override
	public Attendance findAttendance(int att_id, String subject,String oldDate) {
		return attendanceDao.getAttendance(att_id,subject,oldDate);
	}

	@Override
	public void addNew(Attendance att) {
		LocalDate localDate = LocalDate.now();//For reference DateTimeFormatter
		DateTimeFormatter formatter=DateTimeFormatter.ofPattern("yyyy M dd");
		String formatdate=localDate.format(formatter);
		System.out.println(formatdate);
		String oldDate = formatdate;  
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		try{
			System.out.println("try loop");
			c.setTime(sdf.parse(oldDate));
			System.out.println("after try loop");
		}catch(ParseException e){
			
		 }
		int j=1;
		for(int i=1;i<=5;i++) {
			String newDate = sdf.format(c.getTime());
			System.out.println("for loop i "+i);
			att.setDate(newDate);
			attendanceDao.addNewStudent(att);
			c.add(Calendar.DAY_OF_MONTH, j);   
//			System.out.println("attendance object for loop - "+att);
//			
//			System.out.println("new date in for loop "+newDate);
//			
			System.out.println(i+" st date added");
		}
		
	}

	@Override
	public void deleteRecord(int studentId) {
		attendanceDao.delete_record(studentId);
	}
	
}
