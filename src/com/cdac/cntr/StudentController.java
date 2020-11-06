package com.cdac.cntr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Student;
import com.cdac.service.StudentService;
import com.cdac.valid.Validation;

@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private Validation checkValidator;
	
	@Autowired
	private MailSender mailSender;
	
	@RequestMapping(value = "/reg_form.cdac" ,method = RequestMethod.GET)
	public String register_form(ModelMap map) {
		map.put("student",new Student());
		return "reg_form";
	}
	
	@RequestMapping(value="/reg.cdac",method = RequestMethod.POST)
	public String register(Student student,BindingResult result,ModelMap map) {
		
		checkValidator.validate(student, result);
		if(result.hasErrors()) {
			return "reg_form";
		}
		
		studentService.register(student);
		return "admin_home";
	}
	
	@RequestMapping(value = "/login_form.cdac",method=RequestMethod.GET)
	public String login_form(ModelMap map) {
		map.put("student", new Student());
		return "login";
	}
	
	@RequestMapping(value="/login.cdac",method=RequestMethod.POST)
	public String login(Student student,BindingResult result,ModelMap map,HttpSession session) {
		System.out.println("controller login method");
		
		checkValidator.validate(student, result);
		if(result.hasErrors()) {
			return "login";
		}
		boolean flag=studentService.loginStud(student);
		if(flag) {
			map.put("student", student);
			session.setAttribute("student", student);
			System.out.println(student);
			return "home";
		}else
		{
			System.out.println("Error login controller");
			map.put("student", new Student());
			return "login";
		}	
	}
	
	
	@RequestMapping(value = "/admin_login_form.cdac",method=RequestMethod.GET)
	public String login_form1(ModelMap map) {
		map.put("student", new Student());
		return "admin_login";
	}
	
	
	@RequestMapping(value="/ad_login.cdac",method=RequestMethod.POST)
	public String login1(Student student,BindingResult result,ModelMap map,HttpSession session) {
		System.out.println("controller admin login method");
		
		checkValidator.validate(student, result);
		if(result.hasErrors()) {
			System.out.println("check result : "+result);
			return "admin_login";
		}
		
		if(student.getStudentId()==111) {
			boolean flag=studentService.loginStud(student);
			if(flag) {
				session.setAttribute("admin", student);
				return "admin_home";
			}else
			{
				System.out.println("Error login controller");
				map.put("student", new Student());
				return "admin_login";
			}
		}else {
			System.out.println("enter right id controller");
			map.put("student", new Student());
			return "admin_login";
		}
		
	}
	
	@RequestMapping(value = "/logout.cdac",method = RequestMethod.GET)
	public String logout(Student student,HttpSession session) {
		session.removeAttribute("student");
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value = "/ad_logout.cdac",method=RequestMethod.GET)
	public String admin_logout(Student student,HttpSession session) {
		session.removeAttribute("admin");
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value ="/forgot_pass.cdac",method = RequestMethod.POST)
	public String forgot_password(@RequestParam String email,ModelMap map) {
		System.out.println("forget method called with mail id => "+email);
		String pass=studentService.getStudent(email);
		System.out.println("i got pass : "+pass);
		String msg = "you are not registered";
		if(pass!=null) {	
			System.out.println("if loop =>"+pass);
			SimpleMailMessage message = new SimpleMailMessage(); 
			message.setFrom("hkerkar97@gmail.com"); 
	        message.setTo(email);  
	        message.setSubject("Your password : ");  
	        message.setText(pass);
	        System.out.println("message => "+message);
	        //sending message   
	        mailSender.send(message);
	        System.out.println("mail sent to gmail");
			msg = "check the mail for password";
		}
		map.put("msg", msg);
		return "info";
	}
	@RequestMapping(value = "/profile.cdac",method = RequestMethod.GET)
	public String findProfile(@RequestParam int studentId,ModelMap map)
	{
		Student student= studentService.getStudent(studentId);
		map.put("student", student);
		return "profile_form";
	}
	
	@RequestMapping(value = "/forgot_pass.cdac",method = RequestMethod.GET)
	public String forgot_pass(@RequestParam int studentId,HttpSession session,ModelMap map)
	{
		
		Student s=studentService.getStudent(studentId);
		map.put("student", s);
		session.setAttribute("student", s);
		return "forgot_pass";
	}
	
	@RequestMapping(value="/change_pass.cdac",method=RequestMethod.POST)
	public String changePass(Student student,HttpSession session,ModelMap map) {
		Student s=studentService.getStudent(student.getStudentId());
		s.setStudentPass(student.getStudentPass());
		studentService.modifyStudent(s);
		return "profile_form";
	}
	
}
