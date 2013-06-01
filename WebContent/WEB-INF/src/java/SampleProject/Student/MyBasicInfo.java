package SampleProject.Student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import SampleProject.DBHandler;
import SampleProject.ExampleSupport;

@SuppressWarnings("serial")
public class MyBasicInfo extends ExampleSupport {
	private BasicInfo stuInfo = new BasicInfo();
	private DBHandler dbHandler = new DBHandler();
	public BasicInfo getStuInfo() {
		return stuInfo;
	}
	public void setStuInfo(BasicInfo stuInfo) {
		this.stuInfo = stuInfo;
	}
	public String execute() throws Exception {
		Connection conn = null;
		conn = dbHandler.getConnect();
		ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String username = (String) session.get("USER");
    	
    	String sql = "select * from student where no = '"+username+"'";
    	ResultSet rs = dbHandler.searchInfo(conn, sql);
    	if(rs.next()) {
    		BasicInfo info = new BasicInfo();
    		info.setName(rs.getString(1));
    		info.setNo(rs.getString(2));
    		info.setGender(rs.getString(3));
    		info.setBirth(rs.getString(4));
    		info.setId(rs.getString(5));
    		info.setDno(rs.getString(6));
    		info.setMname(rs.getString(7));
    		info.setDomain(rs.getString(8));
    		info.setEnrollyear(rs.getString(9));
    		info.setGrade(rs.getString(10));
    		info.setSchoolyear(rs.getString(11));
    		info.setTno(rs.getString(12));
    		info.setState(rs.getString(13));
    		info.setNationality(rs.getString(14));
    		info.setProperty(rs.getString(15));
    		info.setDegree(rs.getString(16));
    		info.setMobile(rs.getString(17));
    		info.setEmail(rs.getString(18));
    		info.setAddress(rs.getString(19));
    		info.setPostcode(rs.getString(20));
    		info.setFathername(rs.getString(21));
    		info.setFatherwork(rs.getString(22));
    		info.setMothername(rs.getString(23));
    		info.setMotherwork(rs.getString(24));
    		info.setTel(rs.getString(25));
    		setStuInfo(info);
    		return SUCCESS;
    	}
    	else
    		return ERROR;
    }
	
}
class BasicInfo {
	private String no;
	private String name;
	private String gender;
	private String birth;
	private String id;
	private String dno;
	private String mname;
	private String domain;
	private String enrollyear;
	private String grade;
	private String schoolyear;
	private String tno;
	private String state;
	private String nationality;
	private String property;
	private String degree;
	private String mobile;
	private String email;
	private String address;
	private String postcode;
	private String fathername;
	private String fatherwork;
	private String mothername;
	private String motherwork;
	private String tel;
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDno() {
		return dno;
	}
	public void setDno(String dno) {
		this.dno = dno;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getEnrollyear() {
		return enrollyear;
	}
	public void setEnrollyear(String enrollyear) {
		this.enrollyear = enrollyear;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getSchoolyear() {
		return schoolyear;
	}
	public void setSchoolyear(String schoolyear) {
		this.schoolyear = schoolyear;
	}
	public String getTno() {
		return tno;
	}
	public void setTno(String tno) {
		this.tno = tno;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getFatherwork() {
		return fatherwork;
	}
	public void setFatherwork(String fatherwork) {
		this.fatherwork = fatherwork;
	}
	public String getMothername() {
		return mothername;
	}
	public void setMothername(String mothername) {
		this.mothername = mothername;
	}
	public String getMotherwork() {
		return motherwork;
	}
	public void setMotherwork(String motherwork) {
		this.motherwork = motherwork;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
}