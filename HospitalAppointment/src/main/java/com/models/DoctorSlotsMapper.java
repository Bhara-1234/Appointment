package com.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.jdbc.core.RowMapper;
public class DoctorSlotsMapper implements RowMapper<DoctorSlots> {

	public DoctorSlots mapRow(ResultSet rs, int i) throws SQLException {
		DoctorSlots ds = new DoctorSlots();
		ds.setS_id(rs.getInt(1));
		ds.setS_docid(rs.getInt(2));
		String dateString = rs.getString(3);

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

		LocalDate localDate = LocalDate.parse(dateString, formatter);
		ds.setS_date(localDate);
		ds.setS_ftime(rs.getString(4));
		ds.setS_ttime(rs.getString(5));
		ds.setS_status(rs.getString(6));
		return ds;
	}
}
