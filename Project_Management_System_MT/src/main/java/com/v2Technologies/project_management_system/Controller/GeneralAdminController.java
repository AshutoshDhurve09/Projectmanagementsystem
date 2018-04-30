package com.v2Technologies.project_management_system.Controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.v2Technologies.project_management_system.entity.Company;



@Controller
@RequestMapping("/Company")
public class GeneralAdminController {
	
	
	@GetMapping("/add")
	public String showAddProject(Model m) {
	
		
		Company company=new Company();
		m.addAttribute("company", company);
	
		return "Home/home";
	}
	
	/*@PostMapping("/addAdminCompany")
	@Transactional
	public String addProject(@ModelAttribute("company") BindingResult bindingResult,HttpSession s) {

		repo.save(proj);
		Employee e  = (Employee) s.getAttribute("employee");
		e = erepo.findByUserNameAndPasswordAndDesignation(e.getUserName(), e.getPassword(), e.getDesignation());
		e.allocateProject(proj);
		return "redirect:/Home/home";
	}*/
	
	@PostMapping("/addAdminCompany")
	public String show(Model m) {
	
		
		Company company=new Company();
		m.addAttribute("company", company);
	
		return "Home/home";
	}

	@GetMapping("/generalAdminLogin")
	public String showLoginPage(Model m) {
	
		
		/*Company company=new Company();
		m.addAttribute("company", company);
		System.out.println("hiiiiiiiiiiiiiii");*/
		return "Company/GeneralAdminLogin";
	}
	
	@GetMapping("/addAdminCompany")
	public String addAdminProject(Model m) {
	
		
		Company company=new Company();
		m.addAttribute("company", company);
	
		return "Company/AddAdmin&Company";
	}
	
}
