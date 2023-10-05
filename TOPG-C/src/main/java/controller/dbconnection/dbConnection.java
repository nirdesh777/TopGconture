	package controller.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.PasswordEncryptionWithAes;
import model.User;
import resources.MyConstants;

public class dbConnection {
	public Connection getConnection(){
		try {
			Class.forName(MyConstants.DRIVER_NAME);
			Connection connection = DriverManager.getConnection(
					MyConstants.DB_URL,
					MyConstants.DB_USER_NAME,
					MyConstants.DB_USER_PASSWORD);
			return connection;
		}catch(SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return null;
		}
	}
	
	//	Start region Read operation
	public List<User> getAllData(String query) {
        List<User> dataList = new ArrayList<User>();
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
	            Statement stmt = dbConnection.createStatement();
	            ResultSet rs = stmt.executeQuery(query);
	            while (rs.next()) {
	            	User data = new User();
	                data.setfullName(rs.getString("fullName"));
	                data.setrole(rs.getString("role"));
	                data.setUsername(rs.getString("username"));
	                dataList.add(data);
	            }
	            rs.close();
	            stmt.close();
	            dbConnection.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		}
        return dataList;
	}
	
	public ResultSet selectWhereQuery(String query, String id) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, id);
				ResultSet result = statement.executeQuery();
				return result;
			} catch (SQLException e) {
				return null;
			}
		}else {
			return null;
		}
	}

	public Boolean isUserAlreadyRegistered(String username) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(MyConstants.CHECK_LOGIN_INFO);
				statement.setString(1, username);
				ResultSet result = statement.executeQuery();
				if(result.next()) {
					return true;		
				}else return false;
			} catch (SQLException e) { return null; }
		}else { return null; }
						
	}
	
	public Boolean isUserRegistered(String query, String username, String password) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, username);
				ResultSet result = statement.executeQuery();
				if(result.next()) {
					String userDb = result.getString("username");
					String passwordDb  = result.getString("password");
					String decryptedPwd = PasswordEncryptionWithAes.decrypt(passwordDb, username);
					if(decryptedPwd!=null && userDb.equals(username) && decryptedPwd.equals(password)) return true;
					else return false;
				}else return false;
			} catch (SQLException e) { return null; }
		}else { return null; }
	}
		
	public int isAdmin(String username) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(MyConstants.IS_USER);
				statement.setString(1, username);
				String query="Select role from user where userName='"+username+"';";
				
				PreparedStatement stt = dbConnection.prepareStatement(query);
			
				ResultSet result1=statement.executeQuery();
				ResultSet result = statement.executeQuery();
				System.out.println(result1);
				if(result.next()) {
					System.out.println(result);
					String role = result.getString("role");
					if(role.toLowerCase() == MyConstants.ADMIN) return 1;
					else return 0;
				}
				else return -1;
			} catch (SQLException e) { return -2; }
		}else { return -3; }
	}
	//	End region Read operation

	//	Start region Create operation
	public int registerUser(String query, User userModel) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				if(isUserAlreadyRegistered(userModel.getUsername())) return -1;
				
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, userModel.getfullName());
				statement.setString(2, userModel.getrole());
				statement.setString(3, userModel.getaddress());
				statement.setString(4, userModel.getphone());
				statement.setString(5, userModel.getemail());
				statement.setString(6, userModel.getUsername());
				statement.setString(7, PasswordEncryptionWithAes.encrypt(
						userModel.getUsername(), userModel.getPassword()));
				statement.setString(8, userModel.getImageUrlFromPart());
		
				int result = statement.executeUpdate();
				if(result>=0) return 1;
				else return 0;
			} catch (Exception e) { 
				System.out.println("error is"+e.getMessage());
				return -2; }
		}else { return -3; }
	}
	//	End region Create operation
	
	//	Start region Update operation
	public Boolean updateUser(String query, String username) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, username);
				int result = statement.executeUpdate();
				if(result>=0)return true;
				else return false;
			} catch (SQLException e) { return null; }
		}else { return null; }
	}
	//	End region Update operation
	
	//	Start region Delete operation
	public Boolean deleteUser(String query, String username) {
		Connection dbConnection = getConnection();
		if(dbConnection != null) {
			try {
				PreparedStatement statement = dbConnection.prepareStatement(query);
				statement.setString(1, username);
				int result = statement.executeUpdate();
				if(result>=0)return true;
				else return false;
			} catch (SQLException e) { return null; }
		}else { return null; }
	}
	//	End region Delete operation
}