package SampleProject.Student;

import java.sql.Connection;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import SampleProject.DBHandler;
import SampleProject.ExampleSupport;

public class Elective extends ExampleSupport{
	private DBHandler dbHandler = new DBHandler();
	
	private SelecClass selecClass = new SelecClass();
	
	public SelecClass getSelecClass() {
		return selecClass;
	}
	public void setSelecClass(SelecClass selecClass) {
		this.selecClass = selecClass;
	}
	public String execute() throws Exception {
		Connection conn = null;
		conn = dbHandler.getConnect();
		String score = null;
		String sql = "insert into scourse values('"+selecClass.getCno()+"','"+selecClass.getSno()+"','"+selecClass.getTno()+"','"+selecClass.getYear()+"','"+selecClass.getSemester()+"','"+score+"')";
    	dbHandler.executeUpdate(conn, sql);
		return SUCCESS;
	}

}

class SelecClass
{
	//scourse
	String cno;
	String sno;
	String tno;
	String year;
	String semester;
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getTno() {
		return tno;
	}
	public void setTno(String tno) {
		this.tno = tno;
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
	
}