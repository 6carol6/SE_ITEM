package SampleProject.Student;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import SampleProject.ExampleSupport;

public class DetailInfo extends ExampleSupport{

	public class StuDetailInfo
	{
		private String name;
		public String getName(){System.out.println("getName");return this.name;};
		public void setName(String name){System.out.println("setName");this.name = name;}
		
		private String sex;
		public String getSex(){return this.sex;};
		public void setSex(String sex){this.sex = sex;}
		
		private String phone;
		public String getPhone(){return this.phone;};
		public void setPhone(String name){this.phone = phone;}
		
		private List<String> courses;
		public List<String> getCourses(){return this.courses;};
		public void setCourses(List<String> courses){this.courses = courses;}
	}
	private StuDetailInfo detail = new StuDetailInfo();
    public String execute() throws Exception {
    	System.out.println("hhhhhhhhhhhh");
    	//�õ������еĲ������û���
    	/*String id = (String) ServletActionContext.getRequest().getParameter("id");
    	System.out.println(id);
    	//�õ�session�еĲ���������/���/��������
    	String pwd = (String) getSession().get("password");
    	System.out.println(pwd);
    	/**TODO �����ݿ��ȡ����*/
    	//detail.setName(getDetail().getName()); 
    /*	detail.sex = "male";
    	detail.phone = "xxxxxxxxx";
    	detail.courses = new ArrayList<String>();
    	for(int i = 0; i < 10 ; i++)
    	{
    		detail.courses.add("Course" + i);
    	}*/
    	//username = "d";
    	
        return SUCCESS;
    }
    
    
    public StuDetailInfo getDetail() {System.out.println("getDetail");
        return detail;
    }

    public void setDetail(StuDetailInfo detail) {System.out.println("getDetail");
        this.detail = detail;
    }
/*
    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    private String name;
    public void setName(String name){
    	this.name = name;
    }
    public String getName(){
    	return name;
    }*/
}
