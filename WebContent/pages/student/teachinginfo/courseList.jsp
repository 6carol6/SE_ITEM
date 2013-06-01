<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>南京大学教务系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style type="text/css"><!--<%@ include file="/pages/css/inner.css"%>--></style>
  </head>
  <!--[if lte IE 6.0000]>
  	<script language="javascript" src="js/pngfix.js"></script>
  <![endif]--> 
  <body >
 
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

<html>
  <head>
  	<style type="text/css"><!--<%@ include file="/pages/css/table.css"%>--></style>
  </head>

  <body class="BODY">
  	<table width="95%" class="TABLE_BODY"  bordercolor="#777777" border="1" style="border-color:#777777;border-collapse:collapse">
  		<tr class="TABLE_TH">
			<th >课程编号</th>
			<th >课程名称</th>
			<th >英文名称</th>
			<th >校区</th>
			<th >教师</th>
			<th >上课教室</th>
			<th >上课时间</th>	  
		</tr>
  	
		<s:iterator value="myCourse" id="course">
		<tr class = "TABLE_TR_01">
  			<td><s:property value="#course.cno" /></td>
  			<td><s:property value="#course.cname" /></td>
  			<td><s:property value="#course.ename" /></td>
  			<td><s:property value="#course.campus" /></td>
  			<td><s:property value="#course.teacher" /></td>
  			<td><s:property value="#course.classroom" /></td>
  			<td><s:property value="#course.time" /></td>
		</tr>
		</s:iterator>
	</table>
  </body>
</html>

</body>
</html>
