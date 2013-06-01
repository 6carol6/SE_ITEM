package SampleProject.Student;

import java.sql.Connection;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import SampleProject.Course;
import SampleProject.DBHandler;
import SampleProject.ExampleSupport;

@SuppressWarnings("serial")
public class DropCourse extends ExampleSupport {
	private DBHandler dbHandler = new DBHandler();
	private Course course = new Course();
	
	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String username = (String) session.get("USER");
    	
		String sql = "delete from scourse where cno = '"+course.getCno()+"' and sno = '"+username+"'";
		Connection conn = null;
		conn = dbHandler.getConnect();
		dbHandler.executeUpdate(conn, sql);
		addActionMessage("推选课程成功！");
		return SUCCESS;
	}
}
