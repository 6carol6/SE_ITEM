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
public class SearchScore extends ExampleSupport {
	private DBHandler dbHandler = new DBHandler();
	private String year;
	private String semester;
	private Vector<Course> myCourse = new Vector<Course>();
	
	public Vector<Course> getMyCourse() {
		return myCourse;
	}

	public void setMyCourse(Vector<Course> myCourse) {
		this.myCourse = myCourse;
	}
	
	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String username = (String)session.get("USER");
    	
    	String sql = "select cno,score from scourse where sno = '"+username+"' and year = '"+year+"' and semester = '"+semester+"'";
    	Connection conn = null;
		conn = dbHandler.getConnect();
		ResultSet rs = dbHandler.searchInfo(conn, sql);
		
		Vector<String> cno = new Vector<String>();
		Vector<String> score = new Vector<String>();
	    while(rs.next()) {
	    	cno.add(rs.getString(1));
	    	score.add(rs.getString(2));
	    }
	    
	    for (int i = 0; i < cno.size(); i++) {
	    	sql = "select chname,enname from course where cno = '"+cno.get(i)+"'";
	    	rs = dbHandler.searchInfo(conn, sql);
	    	
	    	if(rs.next()) {
	    		Course course = new Course();
	    		course.setScore(score.get(i));
	    		course.setCname(rs.getString(1));
	    		course.setEname(rs.getString(2));	    	
	    		myCourse.add(course);
	    	} else {
	    		return ERROR;
	    	}
		}
		
		return SUCCESS;
	}
}
