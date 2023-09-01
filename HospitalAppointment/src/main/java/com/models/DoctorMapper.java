package com.models;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
public class DoctorMapper implements RowMapper<Doctor> {

	public Doctor mapRow(ResultSet rs, int i) throws SQLException {
		Doctor dd = new Doctor();
		dd.setDoc_id(rs.getInt(1));
		dd.setDoc_name(rs.getString(2));
		dd.setDoc_qual(rs.getString(3));
		dd.setDoc_spec(rs.getString(4));
		dd.setDoc_exp(rs.getInt(5));
		dd.setDoc_img(rs.getString(6));
		return dd;
	}
}
