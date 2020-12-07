package com.techelevator.application.jdbcdao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.techelevator.application.dao.userDao;

@Component
public class jdbcUserDao implements userDao{

	private JdbcTemplate jdbcTemplate;
	
	public jdbcUserDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	

}
