package edu.fau.group2.ourproject.services;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group2.ourproject.model.Education;

@Component
public class EducationService extends BaseService<Education> {
	
	@Autowired
	public EducationService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Education getById(int id) {
		String sql = "select * from Education where majorID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{id}, new EducationMapper());
		} catch (EmptyResultDataAccessException ex) {
		return null;
		}
	}

	@Override
	public List<Education> getByName(String name) {
		String sql = "select * from Education where majorname = ?";
		return jdbcTemplate.query(sql, new EducationMapper());
	}

	@Override
	public List<Education> getAll() {
		String sql = "select * from Education";
		return jdbcTemplate.query(sql, new EducationMapper());
	}

	@Override
	public boolean create(Education t) {
		String sql = "insert into Education (majorname) " + "values(?)";
		return jdbcTemplate.update(sql,t.getMajorName()) > 0; 
	}

	@Override
	public boolean update(Education t) {
		String sql = "update Education set majorname=? where majorID=?";
		return jdbcTemplate.update(sql,t.getMajorName(), t.getMajorId()) > 0;

	}

	@Override
	public boolean delete(int id) {
		String sql = "delete from Education where majorID = ?";
		return jdbcTemplate.update(sql,id)>0;
	}

}
