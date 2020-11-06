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

import com.cdac.dto.Attendance;
import com.cdac.dto.Student;

@Repository
public class AttendanceDaoImple implements AttendanceDao {
	
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public List<Attendance> showSubjectWiseAttendace(String subject,String date) {
		List<Attendance> list=hibernateTemplate.execute(new HibernateCallback<List<Attendance>>() {
			@Override
			public List<Attendance> doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from Attendance where subject=? and date=?");
				q.setString(0,subject);
				q.setString(1, date);
				List<Attendance> li=q.list();
				for(Attendance a :li) {
 					System.out.println(a);
 				}
				return li;
			}
		});
		return list;
	}


	@Override
	public List<Student> showList() {
		List <Student> li=hibernateTemplate.execute(new HibernateCallback<List<Student>>() {

			@Override
			public List<Student> doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from Student where studentId!=111");
				List <Student> list=q.list();
				tr.commit();
				session.flush();
				session.close();
				return list;
			}
		});
		return li;
	}

	@Override
	public void addStudentAttendance(Attendance att) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {
			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				System.out.println("attendance update "+att);
				System.out.println("change from absent to present\n");
				session.update(att);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

	@Override
	public Attendance getAttendance(int att_id, String subject,String oldDate) {
		Attendance a=hibernateTemplate.execute(new HibernateCallback<Attendance>() {

			@Override
			public Attendance doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from Attendance where studentId=? and subject =? and date=?");
				q.setInteger(0, att_id);
				q.setString(1, subject);
				q.setString(2, oldDate);
				List<Attendance>li=q.list();
				Attendance a1=new Attendance();
				for(Attendance att:li) {
					a1=att;
				}
				tr.commit();
				session.flush();
				session.close();
				return a1;
			}
		});
		return a;
	}

	@Override
	public void addNewStudent(Attendance attendance) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {
			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				System.out.println("attendance");
				Transaction tr=session.beginTransaction();
				session.save(attendance);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public void delete_record(int studentId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.delete(new Attendance(studentId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

}
