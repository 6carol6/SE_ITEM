/*
 * $Id: Login.java 471756 2006-11-06 15:01:43Z husted $
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package SampleProject;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;





public class Login extends ExampleSupport {
	private class UserLogin{
		private String username;
		private String password;
		private int role;
		
		public String getUsername(){
			return username;
		}
		public void setUsername(String username){
			this.username = username;
		}
		public String getPassword(){
			return password;
		}
		public void setPassword(String password){
			this.password = password;
		}
		public int getRole(){
			return role;
		}
		public void setRole(int role){
			this.role = role;
		}
	}
    public String execute() throws Exception {
    	
    	
        if (isInvalid(user.getUsername())) return INPUT;

        if (isInvalid(user.getPassword())) return INPUT;

        /**TO DO*/
        Connection conn = null;
        String type = "";
        
        if(user.getRole()==0) type = "Student";
        else if(user.getRole()==1) type = "Teacher";
        else if(user.getRole()==2) type = "Admin";
        
        String url = "jdbc:mysql://localhost:3306/graduate_status?characterEncoding=UTF-8";
        String username = "root";  
        String password = "";
        try {   
        		
            	Class.forName("com.mysql.jdbc.Driver" );  
            	
            	conn = (Connection) DriverManager.getConnection( url,username, password );   
            	
            } 
        catch ( ClassNotFoundException cnfex ) {  
            System.err.println(  
            "装载 JDBC/ODBC 驱动程序失败。" );  
            cnfex.printStackTrace();   
        }
        catch ( SQLException sqlex ) {  
            System.err.println( "无法连接数据库" );  
            sqlex.printStackTrace();   
        }
        catch (Exception e) {
			// TODO: handle exception
        	 System.out.println(e);
		}
        
        try
        {
        	Statement st = (Statement) ((java.sql.Connection) conn).createStatement();
            System.out.print(user.getUsername());
            String sql = "select * from userlogin where username = '"+user.getUsername()+"'and password = '"+user.getPassword()+"'and role = '"+user.getRole()+"'";
            ResultSet rs = ((java.sql.Statement) st).executeQuery(sql);
            if(rs.next())
            	return type;
            else
            {
            	addActionError("用户名或密码错误");
            }
        }
        catch (Exception e) {
			// TODO: handle exception
        	 System.out.println(e);
		}
        
        	
        return INPUT;
    }

    private boolean isInvalid(String value) {
        return (value == null || value.length() == 0);
    }
    private UserLogin user = new UserLogin();
    public UserLogin getUser(){
    	return user;
    }
    public void setUser(UserLogin user){
    	this.user = user; 
    }
    

}