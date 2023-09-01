package com.daos;
import java.util.ArrayList;
import com.models.DoctorMapper;
import com.models.DoctorSlots;
import com.models.DoctorSlotsMapper;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.models.Doctor;

public class DoctorDaoImp implements DoctorDao {
	JdbcTemplate jdbcTemplate;
	
	String SQL_GET_DOCTORS = "select * from mbs_doctors";
	String SQL_GET_SLOTS_BY_ID = "select * from mbs_slots where s_status='Open' and s_docid=?";

	@Autowired
	public DoctorDaoImp(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public ArrayList<Doctor> getAllDoctors() {
		// TODO Auto-generated method stub
		return (ArrayList<Doctor>) jdbcTemplate.query(SQL_GET_DOCTORS, new DoctorMapper());
	}

	@Override
	public ArrayList<DoctorSlots> getSlotsById(int doc_id) {
		return (ArrayList<DoctorSlots>) jdbcTemplate.query(SQL_GET_SLOTS_BY_ID, new Object[] {doc_id},new DoctorSlotsMapper());
	}
}
