 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南京大学教务系统</title>
 <style type="text/css"><!--<%@ include file="/pages/css/inner.css"%>--></style>
</head>
<body>

	<div id="Header">
 
 
<div id="Logo"><a href="/SampleProject/pages/Login.jsp"><img src="/SampleProject/pages/image/student/Logo_Student.jpg" border="0"></a></div>
<div id="TopLink"><img src="/SampleProject/pages/image/Icon_Help.gif"><a href="#">帮助</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="/SampleProject/pages/image/Icon_Exit.gif"><a href="/SampleProject/pages/Login.jsp">退出</a></div>
<div id="UserInfo">欢迎您：<%=session.getAttribute("USER") %>&nbsp;&nbsp;&nbsp;&nbsp;当前身份：学生</div><!-- 能进入这个页面的都是学生 -->
		
<script type="text/javascript" language="javascript" src="js/prototype.js"></script>
<div id="Nav">
  <ul>
    <li id="homepage"><a href="/SampleProject/pages/student/StudentIndex.jsp">首  页</a></li>
    <li id="studentinfo"><a href="/SampleProject/pages/student/studentinfo/index.jsp">个人信息</a></li>
    <li id="teachinginfo"><a href="/SampleProject/pages/student/teachinginfo/index.jsp">教学信息</a></li>
    <li id="teachinginfo"><a href="/SampleProject/student/elective/StuSelIndex">学期选课</a></li> 	
  </ul>
</div>
	</div>
	




<div id="Function">
    <ul>
	  <li><a href="studentinfo.jsp"><img src="/SampleProject/pages/image/student/info/personal.png"><br />学生信息</a></li>
	  <li><a href="achievementinfo.jsp?method=searchTermList"><img src="/SampleProject/pages/image/student/info/achievement.png"><br />成绩查看</a></li>  
	  <li><a href="modifyPassword.jsp"><img src="/SampleProject/pages/image/student/info/password.png"><br />修改密码</a></li>
	</ul>
</div>
<div class="Line"></div>
  </body>


</html>
