package com.example.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.StudentDao;
import com.example.model.Student;

@Service
@Transactional
public class StudentServiceImpl implements StudentService{

	@Autowired
	StudentDao studentDao;
	
	@Override
	public void addStudent(Student student) {
		studentDao.addStudent(student);
	}

	@Override
	public Student getStudentById(int id) {
		return studentDao.getStudentById(id);
	}

	@Override
	public void deleteStudent(int id) {
		studentDao.deleteStudent(id);
	}

	@Override
	public void updateStudent(Student student) {
		studentDao.updateStudent(student);
	}

	@Override
	public List<Student> getStudentList() {
		return studentDao.getStudentList();
	}

}
