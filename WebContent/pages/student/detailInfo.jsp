<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Detail Page</title>
</head>
<body>
<h1>Student Detail Info</h1>
<p>这个页面展示了如何从数据库加载数据，并显示到页面上来</p>
<p><em>注意List结构的迭代，将在选课列表中使用这个方法</em></p>
<s:form action="StuDetailInfo">
<s:textfield name = "detail.name" label="Username"/>
<s:submit/>
<table>
<tr>
<td>

</s:form>
</td>
<td>name:<s:property value="detail.name"/></td>
</tr>
<tr>
<td>sex:<s:property value="detail.sex" /></td>
</tr>
<tr>
<td>phone:<s:property value="detail.phone" /></td>
</tr>
<s:iterator value="detail.courses" id="course">
	<tr>
  		<td><s:property value="#course" /></td>
	</tr>
</s:iterator>
</table>
</body>
</html>