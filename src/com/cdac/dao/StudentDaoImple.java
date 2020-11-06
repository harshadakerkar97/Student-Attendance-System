package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.Student;
@Repository
public class StudentDaoImple implements StudentDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Override
	public void registerStudent(Student student) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.save(student);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

	@Override
	public void updateStudent(Student student) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {
			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.update(student);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

	@Override
	public void removeStudent(int studentId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.delete(new Student(studentId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public boolean loginStudent(Student student) {
		System.out.println("dao login method");
		boolean b=hibernateTemplate.execute(new HibernateCallback<Boolean>() {
			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from Student where studentId=? and studentPass=?");
				System.out.println(q);
				q.setInteger(0, student.getStudentId());
				q.setString(1,student.getStudentPass());
				List<Student> list=q.list();
				for(Student li:list ) {
					System.out.println(li);
				}
				boolean b1=!list.isEmpty();
				if(b1) {
					student.setStudentId(list.get(0).getStudentId());
					student.setStudentName(list.get(0).getStudentName());
					student.setEmail(list.get(0).getEmail());
					student.setContact_no(list.get(0).getContact_no());
					student.setSemister(list.get(0).getSemister());
				}
				tr.commit();
				session.flush();
				session.close();
				return b1;
			}
		});
		return b;
	}

	@Override
	public Student findStudent(int studentId) {
		Student stud=hibernateTemplate.execute(new HibernateCallback<Student>() {
			@Override
			public Student doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Student s=(Student)session.get(Student.class, studentId);
				tr.commit();
				session.flush();
				session.close();
				return s;
			}
		});
		return stud;
	}

	@Override
	public String getEmail(String email) {
		String password = hibernateTemplate.execute(new HibernateCallback<String>() {

			@Override
			public String doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Student where email = ?");
				q.setString(0, email);
				List<Student> li = q.list();
				String pass = null;
				if(!li.isEmpty())
					pass = li.get(0).getStudentPass();
				tr.commit();
				session.flush();
				session.close();
				return pass;
			}
			
		});
		return password;
	}

}
