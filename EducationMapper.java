package edu.fau.group2.ourproject.services;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group2.ourproject.model.*;

public class EducationMapper implements RowMapper<Education> {

	public Education mapRow(ResultSet rs, int rowNum) throws SQLException {
		Education e = new Education();
		e.setMajorName(rs.getString(1));
		e.setMajorId(rs.getInt(2));
		return e;
	}

}
