package edu.fau.group2.ourproject.services;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group2.ourproject.model.*;

public class ProfInterestsMapper implements RowMapper<ProfInterests> {

	public ProfInterests mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProfInterests profInt = new ProfInterests();
		profInt.setProfInterestsID(rs.getInt(1));
		profInt.setProfInterest(rs.getString(2));
		return profInt;
	}

}




