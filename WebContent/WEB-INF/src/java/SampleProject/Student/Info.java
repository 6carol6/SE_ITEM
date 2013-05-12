package SampleProject.Student;

import org.apache.struts2.ServletActionContext;

import SampleProject.ExampleSupport;

public class Info extends ExampleSupport{

    public String execute() throws Exception {
    	//得到链接中的参数：用户名
    	String id = (String) ServletActionContext.getRequest().getParameter("id");
    	System.out.println(id);
    	//得到session中的参数：密码/身份/。。。。
    	String pwd = (String) getSession().get("password");
    	System.out.println(pwd);

        return SUCCESS;
    }
}
