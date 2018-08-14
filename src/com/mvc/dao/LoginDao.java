package com.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.bean.LoginBean;
import com.mvc.database.DBConnection;

public class LoginDao {
	
	public String authenticateUser(LoginBean loginBean) {
		
		String username = loginBean.getUsername();
		String password = loginBean.getPassword();
		
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		String userNameDB = "";
		String passwordDB = "";
		
		try {
			con = DBConnection.createConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("select username, password from users");
			
			while(resultSet.next()) {
				userNameDB = resultSet.getString("username");
				passwordDB = resultSet.getString("password");
				
				if(username.equals(userNameDB) && password.equals(passwordDB)) {
					return "SUCCESS";
				}
			}
		}	
		catch(SQLException e) {
				e.printStackTrace();
		}
		return "Invalid user credentials!";
	}
}

