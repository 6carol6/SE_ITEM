package SampleProject.Student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Map;
import java.util.Vector;

import com.opensymphony.xwork2.ActionContext;

import SampleProject.Course;
import SampleProject.DBHandler;
import SampleProject.ExampleSupport;

@SuppressWarnings("serial")
public class MyCourseInfo extends ExampleSupport {
	private DBHandler dbHandler = new DBHandler();
	private Vector<Course> myCourse = new Vector<Course>();
	
	public Vector<Course> getMyCourse() {
		return myCourse;
	}

	public void setMyCourse(Vector<Course> myCourse) {
		this.myCourse = myCourse;
	}

	public String execute() throws Exception {
		Connection conn = null;
		conn = dbHandler.getConnect();
		
		ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String username = (String) session.get("USER");
    	
		String sql = "select cno,tno from scourse where sno = '"+username+"'";
	    ResultSet rs = dbHandler.searchInfo(conn, sql);
	    
	    Vector<String> cno = new Vector<String>();
	    Vector<String> tno = new Vector<String>();
	    while(rs.next()) {
	    	//System.out.println("next");
	    	cno.add(rs.getString(1));
	    	tno.add(rs.getString(2));
	    }
	    
	    for (int i = 0; i < cno.size(); i++) {
	    	//System.out.println("sql");
	    	sql = "select chname,enname,campus,startweek,endweek from course where cno = '"+cno.get(i)+"'";
	    	rs = dbHandler.searchInfo(conn, sql);
	    	
	    	Course course = new Course();
	    	course.setCno(cno.get(i));
	    	if(rs.next()) {
	   
	    		course.setCname(rs.getString(1));
	    		course.setEname(rs.getString(2));
	    		course.setCampus(rs.getString(3));
	    		course.setTime(rs.getString(4)+"-"+rs.getString(5));
	    	} else {//System.out.println("59");
	    		return ERROR;
	    	}
	    	
	    	sql = "select name from teacher where no = '"+tno.get(i)+"'";
	    	rs = dbHandler.searchInfo(conn, sql);
	    	
	    	if(rs.next()) course.setTeacher(rs.getString(1));
	    	else{
	    		//System.out.println("68");
	    		return ERROR;
	    	}
	    	
	    	sql = "select timestart,timeend,crno,week from teaching where cno = '"+cno.get(i)+"' and tno = '"+tno.get(i)+"'";
	    	rs = dbHandler.searchInfo(conn, sql);
	    	
	    	String crno = null;
	    	if(rs.next()) {
	    		course.setTime(course.getTime()+"  "+rs.getString(1)+"-"+rs.getString(2));
	    		crno = rs.getString(3);
	    	} else {
	    		//System.out.println("80");
	    		return ERROR;
	    	}
	    	
	    	sql = "select name from classroom where no = '"+crno+"'";
	    	rs = dbHandler.searchInfo(conn, sql);
	    	if(rs.next()) course.setClassroom(rs.getString(1));
	    	else{
	    		//System.out.println("88");
	    		return ERROR;
	    	}
	    	System.out.println("www"+course.getCname());
	    	myCourse.add(course);
		}
	  //  System.out.println("123");
		return SUCCESS;
	}
}
