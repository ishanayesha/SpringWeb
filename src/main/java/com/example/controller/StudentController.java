package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.model.Student;
import com.example.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	StudentService studentService;
	
	@GetMapping(value="/home")
	public String addStudent(Model model) {
		
		
		List<Student> list=studentService.getStudentList();
		model.addAttribute("students",list);		
		
		model.addAttribute("newStudent", new Student());
		return "addStudent";
	}

	@GetMapping(value="/list")
	public String studentList(Model model) {
		
		List<Student> list=studentService.getStudentList();
		
		model.addAttribute("students",list);
		return "studentList";
	}	

	@GetMapping(value="/student/{id}")
	public String getStudent(@PathVariable int id,Model model) {
		
		Student student=studentService.getStudentById(id);
		
		model.addAttribute("student",student);
		return "updateStudent";
	}	

	@GetMapping(value="/delete/{id}")
	public String deleteStudent(@PathVariable int id,Model model) {
		
		studentService.deleteStudent(id);
		return "redirect: http://localhost:8080/SpringWeb/home";
	}
	
	@PostMapping(value="/add")
	public String studentList(@ModelAttribute(value = "newStudent") Student student) {
		
		/*if(result.hasErrors()) {
			return "addStudent";
		}*/
		studentService.addStudent(student);
		System.out.println("post");
		return "redirect: http://localhost:8080/SpringWeb/home";
	}

	@PostMapping(value="/edit/{id}")
	public String updateStudent(@PathVariable int id,@ModelAttribute(value = "student") Student student) {
	
		studentService.updateStudent(student);
		return "redirect: http://localhost:8080/SpringWeb/home";
	}	
}
