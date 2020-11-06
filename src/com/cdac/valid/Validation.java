package com.cdac.valid;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cdac.dto.Student;

@Service
public class Validation implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.equals(Student.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "studentId","unmKey", "name required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "studentPass", "passKey","password required");
		
		Student student = (Student)target;
		if(student.getStudentPass()!=null) {
			if(student.getStudentPass().length()<5) { 
				errors.rejectValue("studentPass", "passKey", "password should contain more 5 chars");
			}
		}
		
		
	}
	
}
