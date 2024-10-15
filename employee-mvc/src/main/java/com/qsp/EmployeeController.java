package com.qsp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeDao dao;
	
	@GetMapping("/reg")
	public ModelAndView register(@ModelAttribute Employee employee) {
		dao.saveEmployee(employee);
		ModelAndView mv=new ModelAndView("findAll");
		return mv; 
	}
	@GetMapping("/findAll")
	public ModelAndView fetchAll() {
		List<Employee> list=dao.findAll();
		ModelAndView modelAndView=new ModelAndView("fetchAll.jsp");
		modelAndView.addObject("list", list);
		return modelAndView;
	}
	@GetMapping("/delete")
	public ModelAndView deleteEmp(@RequestParam int id) {
		dao.deleteEmployeeById(id);
		ModelAndView mv=new ModelAndView("findAll");
		return mv;
	}
	@GetMapping("/edit")
	public ModelAndView getDataToUpdateEmp(@RequestParam int id) {
		Employee employee=dao.findEmployeeById(id);
		ModelAndView mv=new ModelAndView("update.jsp");
		mv.addObject("emp", employee);
		System.out.println("emp object added");
		return mv;
	}
	@GetMapping("/update")
	public String update(@ModelAttribute Employee employee) {
		dao.updateEmployee(employee);
		System.out.println("updated");
		return "findAll";
	}
}
