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

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

@SuppressWarnings("serial")
public class Login extends ExampleSupport {
	private UserLogin user = new UserLogin();
	private DBHandler dbHandler = new DBHandler();
	
    public UserLogin getUser(){
    	return user;
    }
    
    public void setUser(UserLogin user){
    	this.user = user; 
    }
    
    public String execute() throws Exception {
    	
        if (isInvalid(user.getUsername())) return INPUT;

        if (isInvalid(user.getPassword())) return INPUT;

        Connection conn = null;
        String type = "";
        
        if(user.getRole()==0) type = "Student";
        else if(user.getRole()==1) type = "Teacher";
        else if(user.getRole()==2) type = "Admin";
        
        conn = dbHandler.getConnect();
        
        String sql = "select * from userlogin where username = '"+user.getUsername()+"'and password = '"+user.getPassword()+"'and role = '"+user.getRole()+"'";
        ResultSet rs = dbHandler.searchInfo(conn, sql);
        if(rs.next()) {
        	ActionContext actionContext = ActionContext.getContext();
        	Map<String, Object> session = actionContext.getSession();
        	session.put("USER", user.getUsername());
        	return type;
        }
        else
        	addActionError("用户名或密码错误");
      
        return INPUT;
    }

    private boolean isInvalid(String value) {
        return (value == null || value.length() == 0);
    }
}

class UserLogin{
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