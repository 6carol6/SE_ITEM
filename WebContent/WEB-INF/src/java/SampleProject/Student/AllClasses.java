package SampleProject.Student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;


import SampleProject.DBHandler;
import SampleProject.ExampleSupport;

public class AllClasses extends ExampleSupport{
	private DBHandler dbHandler = new DBHandler();
	private ArrayList<ClassInfo> classesList = new ArrayList<ClassInfo>();
	public ArrayList<ClassInfo> getClassesList() {
		System.out.println("!!!!!get!!!!!!");
		return classesList;
	}
	public void setClassesList(ArrayList<ClassInfo> classesList) {
		System.out.println("!!!!!set!!!!!!");
		this.classesList = classesList;
	}
	public String execute() throws Exception {
		
		Connection conn = null;
		conn = dbHandler.getConnect();
    	String sql = "select * from course,teaching,teacher,classroom where course.cno = teaching.cno and teaching.tno = teacher.no and teaching.crno = classroom.no";
    	ResultSet rs = dbHandler.searchInfo(conn, sql);
    	System.out.print("111111111111111111111111111111");
    	while(rs.next())
    	{
    		ClassInfo cInfo = new ClassInfo();
    		cInfo.setEnname(rs.getString(1));
    		cInfo.setChname(rs.getString(2));
    		cInfo.setCno(rs.getString(3));
    		cInfo.setAvghour(rs.getString(4));
    		cInfo.setCredit(rs.getString(5));
    		cInfo.setDno(rs.getString(6));
    		cInfo.setCampus(rs.getString(7));
    		cInfo.setStartweek(rs.getString(8));
    		cInfo.setEndweek(rs.getString(9));
    		cInfo.setMaxnum(rs.getString(10));
    		cInfo.setTotalnum(rs.getString(11));
    		cInfo.setTno(rs.getString(13));
    		cInfo.setTimestart(rs.getString(14));
    		cInfo.setTimeend(rs.getString(15));
    		cInfo.setCrno(rs.getString(16));
    		cInfo.setWeek(rs.getString(17));
    		cInfo.setTname(rs.getString(19));
    		cInfo.setProfess(rs.getString(21));
    		cInfo.setCrname(rs.getString(23));
    		classesList.add(cInfo);
    	}   	
		return SUCCESS;
	}
}

class ClassInfo
{	
	//course
	String enname;
	String chname;
	String cno;
	String avghour;
	String credit;
	String dno;
	String campus;
	String startweek;
	String endweek;
	String maxnum;
	String totalnum;
	
	//Teaching
	String tno;
	String timestart;
	String timeend;
	String crno;
	String week;
	
	//Teacher
	String tname;
	String profess;
	
	//classroom
	String crname;

	public String getEnname() {
		return enname;
	}

	public void setEnname(String enname) {
		this.enname = enname;
	}

	public String getChname() {
		return chname;
	}

	public void setChname(String chname) {
		this.chname = chname;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getAvghour() {
		return avghour;
	}

	public void setAvghour(String avghour) {
		this.avghour = avghour;
	}

	public String getCredit() {
		return credit;
	}

	public void setCredit(String credit) {
		this.credit = credit;
	}

	public String getDno() {
		return dno;
	}

	public void setDno(String dno) {
		this.dno = dno;
	}

	public String getCampus() {
		return campus;
	}

	public void setCampus(String campus) {
		this.campus = campus;
	}

	public String getStartweek() {
		return startweek;
	}

	public void setStartweek(String startweek) {
		this.startweek = startweek;
	}

	public String getEndweek() {
		return endweek;
	}

	public void setEndweek(String endweek) {
		this.endweek = endweek;
	}

	public String getMaxnum() {
		return maxnum;
	}

	public void setMaxnum(String maxnum) {
		this.maxnum = maxnum;
	}

	public String getTotalnum() {
		return totalnum;
	}

	public void setTotalnum(String totalnum) {
		this.totalnum = totalnum;
	}

	public String getTno() {
		return tno;
	}

	public void setTno(String tno) {
		this.tno = tno;
	}

	public String getTimestart() {
		return timestart;
	}

	public void setTimestart(String timestart) {
		this.timestart = timestart;
	}

	public String getTimeend() {
		return timeend;
	}

	public void setTimeend(String timeend) {
		this.timeend = timeend;
	}

	public String getCrno() {
		return crno;
	}

	public void setCrno(String crno) {
		this.crno = crno;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getProfess() {
		return profess;
	}

	public void setProfess(String profess) {
		this.profess = profess;
	}

	public String getCrname() {
		return crname;
	}

	public void setCrname(String crname) {
		this.crname = crname;
	}
	
}