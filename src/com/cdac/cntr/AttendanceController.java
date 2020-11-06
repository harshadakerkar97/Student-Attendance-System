package com.cdac.cntr;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Attendance;
import com.cdac.dto.Student;
import com.cdac.service.AttendanceService;
import com.cdac.service.StudentService;

@Controller
public class AttendanceController {
	@Autowired
	private AttendanceService attendanceService;
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "/stud_list.cdac")
	public String showStudent(ModelMap map) {
		List<Student>list=attendanceService.showAll();
		System.out.println("student list controller ");
		for(Student s:list) {
			System.out.println(s);
		}
		map.put("li", list);
		return "studList";
	}
	
	@RequestMapping(value = "/delete_form.cdac",method = RequestMethod.GET)
	public String deleteStudent(@RequestParam int studentId,ModelMap map) {
		studentService.deleteStudent(studentId);
		attendanceService.deleteRecord(studentId);
		List<Student> list=attendanceService.showAll();
		map.put("li", list);
		return "studList";
	}
	@RequestMapping(value = "/update_form.cdac",method = RequestMethod.GET)
	public String updateForm(@RequestParam int studentId,ModelMap map) {
		Student s=studentService.getStudent(studentId);
		map.put("student", s);
		return "update_student_form";
	}
	
	@RequestMapping(value = "/update.cdac",method = RequestMethod.POST)
	public String update(Student student,ModelMap map) {
		studentService.modifyStudent(student);
		List<Student> list=attendanceService.showAll();
		map.put("li", list);
		return "studList";
	}
	
	@RequestMapping(value = "/subject_wise_attendace.cdac",method = RequestMethod.POST)
	public String subject_wise_attendance(@RequestParam String date,Student student,ModelMap map) {
		List<Attendance> li=attendanceService.attendanceList(student.getSubject(),date);
		for(Attendance a:li) {
			System.out.println(a);
		}
		map.put("subject",student.getSubject());
		map.put("list", li);
		map.put("date", date);
		return "subect_wise_attendace";
	}
	
	@RequestMapping(value = "/student_reg.cdac",method=RequestMethod.GET)
	public String subject_reg(@RequestParam int studentId,ModelMap map ) {
		map.put("attendance", new Attendance());
		return "student_reg";
	}
	
	@RequestMapping(value = "/subject_register.cdac",method=RequestMethod.POST)
	public String subject_register(Attendance attendance,ModelMap map,HttpSession session) {
		System.out.println("attendance subject _register time : "+attendance);
		attendanceService.addNew(attendance);
		Student s=studentService.getStudent(attendance.getStudentId());
		map.put("student", s);
		session.setAttribute("student", s);
		System.out.println("controller => subject_reg => student object =>"+s);
		return "home";
	}
	
	
	@RequestMapping(value = "/login_session.cdac",method=RequestMethod.POST)
	public String sessionLogin(Student student,ModelMap map,HttpSession session) {
		int id=student.getStudentId();
		System.out.println("attendance controll "+id);
		LocalDate localDate = LocalDate.now();//For reference DateTimeFormatter
		DateTimeFormatter formatter=DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formatdate=localDate.format(formatter);
		System.out.println(formatdate);
		String oldDate = formatdate;
		System.out.println("old date  : "+oldDate);
		Attendance a=attendanceService.findAttendance(id, student.getSubject(),oldDate);
		System.out.println("after find attendance object "+a);
		a.setAction("present");
		attendanceService.addAttendace(a);
		return "session_start";
	}
}
