package com.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.daos.DoctorDao;
import com.models.Doctor;
import com.models.DoctorSlots;

@Controller
public class HospitalController {
	DoctorDao dd;
	@Autowired
	HospitalController(DoctorDao dd){
		this.dd=dd;
	}
	
	@RequestMapping(value = "/start", method = RequestMethod.GET)
	public String home(Model model) {
		ArrayList<Doctor> doctorsList = dd.getAllDoctors() ;
		model.addAttribute("doctorsList",doctorsList);
		return "about";
	}
	@RequestMapping(value = "/CheckSlots", method = RequestMethod.GET)
	public String checkSlots(Doctor doc,Model model) {
		ArrayList<DoctorSlots> doctorSlotList = dd.getSlotsById(doc.getDoc_id());
		System.out.println(doctorSlotList.size());
		model.addAttribute("doctorSlotList",doctorSlotList);
		return "calender";
	}
}
