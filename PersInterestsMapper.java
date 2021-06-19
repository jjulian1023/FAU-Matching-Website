package edu.fau.group2.ourproject.services;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.fau.group2.ourproject.model.PersInterests;

public class PersInterestsMapper implements RowMapper<PersInterests> {

	public PersInterests mapRow(ResultSet rs, int rowNum) throws SQLException {
		PersInterests pi = new PersInterests();
		pi.setId(rs.getInt(1));
		pi.setPerInterest(rs.getString(2));
		return pi;
	}

}
