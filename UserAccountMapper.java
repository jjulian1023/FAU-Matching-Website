package edu.fau.group2.ourproject.services;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group2.ourproject.model.*;
import java.time.LocalDate;

public class UserAccountMapper implements RowMapper<UserAccount>{

	// MIGHT NEED TO CHANGE NAME BELOW FOR RESULTSET AND INT TO SEE IF IT AFFECTS PAST CODE
	public UserAccount mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserAccount usa = new UserAccount();
		usa.setName(rs.getString(1));
		usa.setLastName(rs.getString(2));
		usa.setGender(rs.getString(3));
		usa.setEmail(rs.getString(4));
		usa.setEducation(rs.getString(5));
		usa.setProfessionalInterests(rs.getString(6));
		usa.setPersonalInterests(rs.getString(7));
		usa.setUsername(rs.getString(8));
		usa.setPassword(rs.getString(9));
		usa.setUserId(rs.getInt(10));
		usa.setDateJoined(rs.getDate(11).toLocalDate());
		return usa;
	}

}
