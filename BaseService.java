package edu.fau.group2.ourproject.services;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

import javax.sql.DataSource;


public abstract class BaseService<T> {
	protected JdbcTemplate jdbcTemplate;


	public BaseService(DataSource dataSource){
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	

		public abstract T getById(int id);
		
		public abstract List<T> getByName(String name);
		
		public abstract List<T> getAll();
		
		public abstract boolean create(T t);
		
		public abstract boolean update(T t);
		
		public abstract boolean delete(int id);


}
