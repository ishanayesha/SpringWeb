package com.example.service;

import java.util.List;

import com.example.model.Student;

public interface StudentService {
	
	public void addStudent(Student student);
	public Student getStudentById(int id);
	public void deleteStudent(int id);
	public void updateStudent(Student student);
	public List<Student> getStudentList();
	
}
