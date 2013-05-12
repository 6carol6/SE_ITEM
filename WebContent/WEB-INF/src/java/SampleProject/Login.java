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

public class Login extends ExampleSupport {
	public class UserLogin{
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
	private UserLogin user = new UserLogin();
    public String execute() throws Exception {
    	if (isInvalid(getUser().getUsername())) return INPUT;
        if (isInvalid(getUser().getPassword())) return INPUT;
    	/*
        if (isInvalid(getUsername())) return INPUT;
        System.out.println("!!!!!!!!!!!!!!!!!!");
        if (isInvalid(getPassword())) return INPUT;

        /**TO DO*/
    	/*
        String type = "";
        if(getIdentity().equalsIgnoreCase("0")) type = "Student";
        else if(getIdentity().equalsIgnoreCase("1")) type = "Teacher";
        else if(getIdentity().equalsIgnoreCase("2")) type = "Admin";
        
        if(getUsername().equalsIgnoreCase("admin"))
        {
        	getSession().put("password", getPassword());
        	return type;
        }
        else addActionError("Login Error!用户名是admin啊");
        	*/
    	String type = "";
    	if(getUser().getRole() == 0) type = "Student";
    	else if(getUser().getRole() == 1) type = "Teacher";
    	else if(getUser().getRole() == 2) type = "Admin";
    	return type;
       // return INPUT;
    }

    private boolean isInvalid(String value) {
        return (value == null || value.length() == 0);
    }
    public UserLogin getUser(){
    	return user;
    }
    public void setUser(UserLogin user){
    	this.user = user; 
    }
}