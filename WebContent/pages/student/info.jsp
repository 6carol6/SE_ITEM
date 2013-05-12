<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Page</title>
</head>
<body>
<h1>Student Info</h1>
<p>这里使用两种传值方法。</p>
<p>第一种是链接上的参数传递，得到用户名：<s:property value="#parameters.id"/></p>
<p>第二种是session中的参数传递，得到密码：<s:property value="#session.password"/></p>
<p>在对应的servlet中，比如这个对应的是SampleProject.Student.Info.java, 也将使用这两种方式来进行用户权限认证</p>
<s:url id="detail" action="StuDetailInfo"/>
<s:a href="%{detail}">see the detail page</s:a>
</body>
</html>