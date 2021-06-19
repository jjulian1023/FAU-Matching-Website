package edu.fau.group2.ourproject.configuration;
import javax.sql.DataSource;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
@Configuration
@ComponentScan("edu.fau.group2.ourproject")


public class Group2JdbcConfig {
	String DATABASE_URL = "jdbc:mysql://66.228.61.104:3306/DBSPRING21G2";
	String DATABASE_USERNAME = "group2spring21db";
	String DATABASE_PASSWORD = "group2spring2021";

	@Bean
	public DataSource mysqlDataSource(){
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl(DATABASE_URL);
		dataSource.setUsername(DATABASE_USERNAME);
		dataSource.setPassword(DATABASE_PASSWORD);
		return dataSource;
		
		
	}
}
