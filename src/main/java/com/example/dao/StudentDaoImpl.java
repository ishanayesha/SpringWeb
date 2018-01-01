package com.example.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.model.Student;

@Repository
public class StudentDaoImpl implements StudentDao{

	@Autowired
	private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }	
	
	@Override
	public void addStudent(Student student) {
		getSession().save(student);
	}

	@Override
	public Student getStudentById(int id) {
		Student student=getSession().get(Student.class, id);
		return student;
	}

	@Override
	public void deleteStudent(int id) {
		getSession().delete(getStudentById(id));
	}

	@Override
	public void updateStudent(Student student) {
		getSession().update(student);
	}

	@Override
	public List<Student> getStudentList() {
		return getSession().createQuery("FROM Student").list();
	}

}
