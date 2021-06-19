package edu.fau.group2.ourproject.services;
import java.util.List;
import javax.sql.DataSource;
import edu.fau.group2.ourproject.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

@Component
public class ProfInterestsService extends BaseService<ProfInterests> {
	
	@Autowired
	public ProfInterestsService(DataSource dataSource) {
		// TODO Auto-generated constructor stub
		super(dataSource);
	}
	
	@Override
	public ProfInterests getById(int id){
		String sql = "select * from Professional_Interests where profInterestsID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{id}, new ProfInterestsMapper());
		} catch (EmptyResultDataAccessException ex) {
		return null;
		}
	}

	@Override
	public List<ProfInterests> getByName(String name) {
		String sql = "select * from Professional_Interests where profInterests = ?";

		return jdbcTemplate.query(sql, new ProfInterestsMapper());
	}

	@Override
	public List<ProfInterests> getAll() {
		String sql = "select * from Professional_Interests";
		return jdbcTemplate.query(sql, new ProfInterestsMapper());
	}

	@Override
	public boolean create(ProfInterests t) {
		String sql = "insert into Professional_Interests (profInterests) " + "values(?)";
		return jdbcTemplate.update(sql,t.getProfInterest()) > 0; 
	}

	@Override
	public boolean update(ProfInterests t) {
		String sql = "update Professional_Interests set profInterests=? where profInterestsID=?";
		return jdbcTemplate.update(sql,t.getProfInterest(), t.getProfInterestsID()) > 0;
	}
	

	@Override
	public boolean delete(int id) {
		String sql = "delete from Professional_Interests where profInterestsID = ?";
		return jdbcTemplate.update(sql,id)>0;
	}



}
