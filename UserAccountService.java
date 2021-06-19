package edu.fau.group2.ourproject.services;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group2.ourproject.model.UserAccount;

@Component
public class UserAccountService extends BaseService<UserAccount> {
	
	@Autowired
	public UserAccountService(DataSource dataSource) {
		super(dataSource); 
		// TODO Auto-generated constructor stub
	}

	@Override
	public UserAccount getById(int id) {
		String sql = "select * from User_Account_Details where userID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{id}, new UserAccountMapper());
		} catch (EmptyResultDataAccessException ex) {
		return null;
		}
	}

	@Override
	public List<UserAccount> getByName(String name) {
		String sql = "select * from User_Account_Details where name = ?";
		return jdbcTemplate.query(sql, new UserAccountMapper());
	}

	@Override
	public List<UserAccount> getAll() {
		String sql = "select * from User_Account_Details";
		return jdbcTemplate.query(sql, new UserAccountMapper());
	}
	

	@Override
	public boolean create(UserAccount t) {
		String sql = "insert into User_Account_Details (name, lastName, gender, email, education, professionalInterests, personalInterests, Username, Password, datejoined)" + "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		return jdbcTemplate.update(sql, t.getName(), t.getLastName(),t.getGender(),t.getEmail(),t.getEducation(),t.getProfessionalInterests(),t.getPersonalInterests(),t.getUsername(),t.getPassword(), Date.valueOf(t.getDateJoined()) )> 0;
	}

	@Override
	public boolean update(UserAccount t) {
		String sql = "update User_Account_Details set name=?,lastName=?,gender=?,email=?,education=?,professionalInterests=?,personalInterests=?,Username=?,Password=?, datejoined=? where userID = ?";
		return jdbcTemplate.update(sql, t.getName(), t.getLastName(),t.getGender(),t.getEmail(),t.getEducation(),t.getProfessionalInterests(),t.getPersonalInterests(),t.getUsername(),t.getPassword(), Date.valueOf(t.getDateJoined()),  t.getUserId() ) > 0;
	}

	@Override
	public boolean delete(int id) {
		String sql = "delete from User_Account_Details where userID = ?";
		return jdbcTemplate.update(sql, id) > 0;
	}
	
	
	
	public List<UserAccount> greaterThanDateJoined(LocalDate datejoined){//database receives  YYYY-MM-DD
		String sql ="select * from User_Account_Details where datejoined > ?";
		return jdbcTemplate.query(sql, new Object[] {datejoined.toString()}, new UserAccountMapper());
	}
	
	
	
}
		
	


