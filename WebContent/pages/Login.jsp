<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>南京大学研究生学籍管理系统</title>
    <style type="text/css"><!--<%@ include file="/pages/Login.css"%>--></style>
</head>
<body>
		<div id="Wrapper">
			<table width="740" height="100%" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="136">
						<div id="Logo">
							<a href="#"><img src="/SampleProject/pages/image/Login/IndexLogo.jpg"
									border="0"></a>
						</div>
					</td>
				</tr>
				<tr>
					<td height="39"></td>
				</tr>
				<tr>					
					<td height="341" id="Main">						    					
						<div id="Login">
						<font style="font-size: 12px;font-weight:bold;color: #FF0000"></font><br>
						<s:form action="Login" validate="true" theme="simple">
							<s:actionerror />
						    用户名：<s:textfield key="user.username" class="InputBox Username"/><br/>
						   密码：<s:password key="user.password" class="InputBox Password"/><br/>
						    <s:radio key="user.role" list="%{#{'0':'学生','1':'教务员','2':'管理员'}}" value="0"/>
						    <s:submit value="" style="margin-left:30px;"/>
						</s:form>
</div>						
						<div id="News">
							<ul>
								<label style="color: red;font-size: 12px;">教务员登陆</label>
								<li>
									 用户名为工资号，初始密码为工资号，请及时修改密码
								</li>
								<br/>
                                <label style="color: red;font-size: 12px;">新生登陆</label>
								<li>
									 用户名为学号，初始密码为<strong>学号</strong>
								</li>
								<br/>
								<label style="color: red;font-size: 12px;">新生登陆注意事项：</label>
								<li>
									 1. 请初次登陆后，进入【基本信息查看】核对您的基本信息。
								</li>
								<li>
									 2. 如果出生日期或身份证号有误，请及时与辅导员联系。
								</li>
								<li>
									 3. 请填写个人联系方式，以便及时与您联系。
								</li>
							</ul>
						</div>
					</td>					
				</tr>
				<tr>
					<td valign="top" id="Footer">
						Copyright &copy; 2013 All Rights Reserved. 版权所有：TEAM 07
						<a href=mailto:mszxw999@gmail.com?subject="关于教务网的问题">联系我们</a>
					</td>
				</tr>
			</table>
		</div>
</body>
</html>
