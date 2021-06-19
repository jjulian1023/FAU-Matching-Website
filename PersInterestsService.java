package edu.fau.group2.ourproject.services;

import java.util.List;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;
import edu.fau.group2.ourproject.model.PersInterests;

@Component
public class PersInterestsService extends BaseService<PersInterests>  {
	@Autowired
	public PersInterestsService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public PersInterests getById(int id) {
		String sql = "select * from Personal_Interests where perInterestsID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{id}, new PersInterestsMapper());
		} catch (EmptyResultDataAccessException ex) {
		return null;
		}
	}

	@Override
	public List<PersInterests> getByName(String name) {
		String sql = "select * from Personal_Interests where perInterests = ?";
		return jdbcTemplate.query(sql, new PersInterestsMapper());
	}

	@Override
	public List<PersInterests> getAll() {
		String sql = "select * from Personal_Interests";
		return jdbcTemplate.query(sql, new PersInterestsMapper());
	}

	@Override
	public boolean create(PersInterests t) {
		String sql = "insert into Personal_Interests (perInterests) " + "values(?)";
		return jdbcTemplate.update(sql,t.getPerInterest()) > 0;
	}

	@Override
	public boolean update(PersInterests t) {
		String sql = "update Personal_Interests set perInterests = ? where perInterestsID=?";
		return jdbcTemplate.update(sql,t.getPerInterest(), t.getId()) > 0;
	}

	@Override
	public boolean delete(int id) {
		String sql = "delete from Personal_Interests where perInterestsID = ?";
		return jdbcTemplate.update(sql,id) > 0;
	}

}
