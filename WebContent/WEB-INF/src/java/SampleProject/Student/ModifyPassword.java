package SampleProject.Student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Map;

import javax.swing.JOptionPane;

import com.opensymphony.xwork2.ActionContext;

import SampleProject.DBHandler;
import SampleProject.ExampleSupport;

@SuppressWarnings("serial")
public class ModifyPassword extends ExampleSupport {
	private DBHandler dbHandler = new DBHandler();
	private String oldPwd;
	private String newPwd;
	private String confirmPwd;
	
	public String getOldPwd() {
		return oldPwd;
	}

	public void setOldPwd(String oldPwd) {
		this.oldPwd = oldPwd;
	}

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}

	public String getConfirmPwd() {
		return confirmPwd;
	}

	public void setConfirmPwd(String confirmPwd) {
		this.confirmPwd = confirmPwd;
	}

	public String execute() throws Exception {
		if(!confirmPwd.equals(newPwd)){
			addActionError("两次新密码输入不一致");
			return ERROR;
		}
		
		ActionContext actionContext = ActionContext.getContext();
    	Map<String, Object> session = actionContext.getSession();
    	String username = (String) session.get("USER");
    	
		String sql = "select * from userlogin where username = '"+username+"'";
		
		Connection conn = null;
		conn = dbHandler.getConnect();
		ResultSet rs = dbHandler.searchInfo(conn, sql);
		if(rs.next()){
			if(!oldPwd.equals(rs.getString(2))){
				addActionError("原密码输入错误");
				return ERROR;
				
			}
		
			sql = "update userlogin set password = '"+newPwd+"' where username = '"+username+"'";
			dbHandler.executeUpdate(conn, sql);
			addActionMessage("修改成功");
			return SUCCESS;
		} else {
			addActionError("修改失败");
			return ERROR;
		}
		
	}
}
