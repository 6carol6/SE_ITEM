package SampleProject.Student.elective;

import SampleProject.ExampleSupport;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class SpecialityCourseList extends ExampleSupport {
	private List<Course> courseList = new ArrayList<Course>();
	public List<Course> getCourseList(){return courseList;}
	public void setCourseList(List<Course> courseList){this.courseList = courseList;}
	
	
	public SpecialityCourseList()
	{
		//get data from database
		for(int i = 0; i < 10; i++)
			courseList.add(new Course(String.valueOf(i), 
					String.valueOf(i), 
	                String.valueOf(i), 
					String.valueOf(i), 
					String.valueOf(i), 
					0));
	}
	
	private class Course{
		public Course(String courseId,
				String courseName,
				String courseScore,
				String courseTime,
				String courseType,
				int selected)
		{
			setCourseId(courseId);
			setCourseName(courseName);
			setCourseScore(courseScore);
			setCourseTime(courseTime);
			setCourseType(courseType);
			setSelected(selected);
		}
		
		private String courseId;
		public String getCourseId(){
			return courseId;
		}
		public void setCourseId(String courseId){
			this.courseId = courseId;
		}
		
		private String courseName;
		public String getCourseName(){
			return courseName;
		}
		public void setCourseName(String courseName){
			this.courseName = courseName;
		}
		
		private String courseScore;
		public String getCourseScore(){
			return courseScore;
		}
		public void setCourseScore(String courseScore){
			this.courseScore = courseScore;
		}
		
		private String courseTime;
		public String getCourseTime(){
			return courseTime;
		}
		public void setCourseTime(String courseTime){
			this.courseTime = courseTime;
		}
		
		private String courseType;
		public String getCourseType(){
			return courseType;
		}
		public void setCourseType(String courseType){
			this.courseType = courseType;
		}
		
		private int selected;
		public int getSelected(){
			return selected;
		}
		public void setSelected(int selected){
			this.selected = selected;
		}
	}
	
    public String execute() throws Exception {
    		
        return SUCCESS;
    }
}