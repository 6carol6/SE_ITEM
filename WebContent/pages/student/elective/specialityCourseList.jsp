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
	﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<div id="courseList">
<link href="/SampleProject/pages/css/student/elective/specialityCourse.css" rel="stylesheet" type="text/css">


<table id="tbCourseList" bordercolor="#777777" border="1" style="border-color:#777777;border-collapse:collapse">
	<thead>
		<tr>
			<td>课程号</td>
			<td width="150">课程名</td>
			<td>学分</td>
			<td>学时</td>
			<td>类型</td>
			<td>状态</td>
		</tr>
	</thead>
	<tbody>
		<s:iterator value="courseList" id="course">
			<tr onclick="sss" class="TABLE_TR_01">
				<td><s:property value="#course.courseId" /></td>
				<td width="150"><s:property value="#course.courseName" /></td>
				<td align="center"><s:property value="#course.courseScore" /></td>
				<td align="center"><s:property value="#course.courseTime" /></td>
				<td><s:property value="#course.courseType" /></td>
				<td><input type="checkbox"  name="test" value="#course.selected"></td>
			</tr>
		</s:iterator>
	</tbody>		
</table>

<input type="button" value="submit" onclick="javascript:alert('not finished')"/>
</div>
<div id="courseElective">
	<div id="operation" style="visibility: hidden;">正在处理中...</div>
	<div id="courseOperation" style="visibility:hidden"></div>
	<div id="courseDetail" style="visibility: visible;">
<b>班级信息</b>
<br><br>

<div id="classList">
	<table id="tbClassList" bordercolor="#777777" border="1" style="border-color:#777777;border-collapse:collapse">
		<thead>
			<tr>
				<td align="center">序号</td>
				<td align="center">班级信息</td>
				<td align="center">选择</td>
			</tr>
		</thead>
		<tbody>			
			
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3" align="center"><input id="sub" name="sub" type="button" value="确定" onclick="selectClass()"></td>
			</tr>
		</tfoot>
	</table>
</div></div>
</div>


<div class="Line"></div>
  



<div><object id="ClCache" click="sendMsg" host="" width="0" height="0"></object></div></body></html>