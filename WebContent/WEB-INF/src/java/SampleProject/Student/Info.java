package SampleProject.Student;

import org.apache.struts2.ServletActionContext;

import SampleProject.ExampleSupport;

public class Info extends ExampleSupport{

    public String execute() throws Exception {
    	//�õ������еĲ������û���
    	String id = (String) ServletActionContext.getRequest().getParameter("id");
    	System.out.println(id);
    	//�õ�session�еĲ���������/���/��������
    	String pwd = (String) getSession().get("password");
    	System.out.println(pwd);

        return SUCCESS;
    }
}
