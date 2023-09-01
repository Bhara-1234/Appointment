package com.daos;

import java.util.ArrayList;

import com.models.Doctor;
import com.models.DoctorSlots;

public interface DoctorDao {
	ArrayList<Doctor> getAllDoctors();
	ArrayList<DoctorSlots> getSlotsById(int doc_id); 

}
