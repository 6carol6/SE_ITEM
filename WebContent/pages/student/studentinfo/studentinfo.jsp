<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

<div id="Logo"><a href="/SampleProject/pages/student/StudentIndex.jsp"><img src="/SampleProject/pages/image/student/Logo_Student.jpg" border="0"></a></div>
<div id="TopLink"><img src="/SampleProject/pages/image/Icon_Help.gif"><a href="#">帮助</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="/SampleProject/pages/image/Icon_Exit.gif"><a href="/SampleProject/pages/Login.jsp">退出</a></div>
<div id="UserInfo">欢迎您：<%=session.getAttribute("USER") %>&nbsp;&nbsp;&nbsp;&nbsp;当前身份：学生</div>
		
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
    <title>学生信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
    <style type="text/css"><!--<%@ include file="/pages/css/table.css"%>--></style> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  
<script type="text/javascript">

	function selectItem(idName)
	{
		var idStr = "";
		
		document.getElementById("d11").className = "DIV_HIDDEN";
		document.getElementById("d22").className = "DIV_HIDDEN";
		document.getElementById("d33").className = "DIV_HIDDEN";
		document.getElementById("tab1").className = "TAB_UNSELECTED";
		document.getElementById("tab2").className = "TAB_UNSELECTED";
		document.getElementById("tab3").className = "TAB_UNSELECTED";
		
		var clickOb  = document.getElementById(idName);
		clickOb.className = "TAB_SELECTED";
		
		if(idName == "tab1")
		{
			idStr = "d11";
		}
		else if(idName == "tab2")
		{
			idStr = "d22";
		}
		else if(idName == "tab3")
		{
			idStr = "d33";
		}
		var  divOb  = document.getElementById(idStr);
		divOb.className = "DIV_SHOW";
	
	}
	
	function mouseOver(idName)
	{
		var ob = document.getElementById(idName);
		var name = ob.className;
		name = name.replace("CURSOR_HAND");
		//alert("name -- "+name+" CURSOR_HAND ");
		ob.className = name+" CURSOR_HAND ";
	}
	
	function CheckOrigin()
	{
		if(validateMobile())
		{
			if(validateEmail())
			{
				if(validateZipCode())
				{
					if(validatePhone())
					{
						document.originForm.submit();
						//return true;
					}
					else
					{
						return ;
					}
				}
				else
				{
					return ;
				}
			}
			else
			{
				return ;
			}
		}
		else 
		{
			return ;
		}
	}
function validateEmail()
{
 	var ob = document.originForm.email;
	var val = ob.value;
	//允许为空
	if(val == null || val.length == 0) return true;
	
  	if(val.indexOf(".") != -1 && val.indexOf("@") != -1 )
  	{
		if( val.indexOf(".") != 0 && val.lastIndexOf(".") != val.length -1 )
		{
			if(val.indexOf("@") != 0 && val.lastIndexOf("@") != val.length -1 )
			{
				return true;
			}else
			{
				alert("邮件格式错误");
				ob.focus();
				return false;
			}
	
		  }else{
			alert("邮件格式错误");
			ob.focus();
			return false;
		  }
	  }  
	  else
	  {
			alert("邮件格式错误");
			ob.focus();
			return false;
	  }
} 

function validateMobile()
{
	var ob = document.originForm.mobile;
	var val = ob.value;
	var extension = "0123456789";
	//允许为空
	if(val == null || val.length == 0) return true;
	
	if(val.length < 11)
	{
		alert("手机号码不能少于11位");
		ob.focus();
		return false;
	}
	else
	{
		for(var i = 0; i<extension.length; i++)
		{
			var temp = val.charAt(i);
			if(extension.indexOf(temp) == -1)
			{
				alert("手机号码不正确");
				ob.focus();
				return false;
			}
		}
	}
	return true;
}

function validateZipCode()
{
	var ob = document.originForm.homeZipCode;
	var val = ob.value;
	var extension = "0123456789";
	//允许为空
	if(val == null || val.length == 0) return true;
	
	if(val.length < 6)
	{
		alert("邮编不能少于6位");
		ob.focus();
		return false;
	}
	else
	{
		for(var i = 0; i<extension.length; i++)
		{
			var temp = val.charAt(i);
			if(extension.indexOf(temp) == -1)
			{
				alert("邮编不正确");
				ob.focus();
				return false;
			}
		}
	}
	return true;
}

function validatePhone()
{
	var ob = document.originForm.homePhone;
	var val = ob.value;
	var extension = "0123456789（）()-+";
	//允许为空
	if(val == null || val.length == 0) return true;
	
	if(val.length < 8)
	{
		alert("电话不能少于8位");
		ob.focus();
		return false;
	}
	else
	{
		for(var i = 0; i<extension.length; i++)
		{
			var temp = val.charAt(i);
			if(extension.indexOf(temp) == -1)
			{
				alert("电话不正确");
				ob.focus();
				return false;
			}
		}
	}
	return true;
}
</script>
</head>

<body class="BODY"  leftmargin="50" rightmargin="50" 
 
	onLoad="selectItem('tab1')"
 
>
  <div  align="center">
			<div style="position:absolute; top:100px; left:50px; height:80px; width:250px;">	
				<table width="100%" border="0" borderColor="#3366CC">
					<tr  height="20">
						<td id='tab1' class="TAB_SELECTED"   onClick="javascript:selectItem('tab1')"  onMouseOver="javaScript:mouseOver('tab1')"> 
							基本信息
				 		</td>
						<td id='tab2' class="TAB_SELECTED" onClick="javascript:selectItem('tab2')" onMouseOver="javaScript:mouseOver('tab2')" >
							 自然信息
						</td>
						<td id='tab3' class="TAB_SELECTED"  onClick="javascript:selectItem('tab3')" onMouseOver="javaScript:mouseOver('tab3')" >
						 	异动信息
						</td>
					</tr>
				</table>
			</div>
	
		<div id="d11" class=DIV_HIDDEN >
			<table width="100%" CLASS="TABLE_BODY" bordercolor="#777777" border="1" style="border-color:#777777;border-collapse:collapse">
				<tr><th colspan="7"  class="TABLE_TH" >基本信息</th></TR>
				
					
						<tr height="27">
							<td rowspan="5" align="left" width="100"><img src="/jiaowu/Data/Photos/common.jpg" width="100" height="140"/></td>
							<td  class="TABLE_TD_02">学号</td>
							<td class="TABLE_TD_01">101220168</td>
							<td class="TABLE_TD_02">姓名</td>
							<td class="TABLE_TD_01">周严</td>
							<td class="TABLE_TD_02">性别</td>
							<td class="TABLE_TD_01">男</td>
						</tr>
						<tr height="27">
							<td  class="TABLE_TD_02">出生日期</TD>
							<td class="TABLE_TD_01">1991年12月05日</TD>
							<td  class="TABLE_TD_02">身份证号</TD>
							<td colspan="3" class="TABLE_TD_01">350425199112050038</TD>
						</tr>
						<tr height="27">
							<td  class="TABLE_TD_02">所在院系</TD>
							<td class="TABLE_TD_01">计算机科学与技术系</TD>
							<td  class="TABLE_TD_02">所在专业</TD>
							<td class="TABLE_TD_01">计算机科学与技术</TD>
							<td  class="TABLE_TD_02">专业方向</TD>
							<td class="TABLE_TD_01"></TD>
						</tr>
						<tr height="27">
							<td  class="TABLE_TD_02">入学年级</TD>
							<td class="TABLE_TD_01">2010</TD>
							<td  class="TABLE_TD_02">所属年级</TD>
							<td class="TABLE_TD_01">2010</TD>
							<td  class="TABLE_TD_02">学制</TD>
							<td class="TABLE_TD_01">4.0</TD>
						</tr>
						<tr height="27">
							<td  class="TABLE_TD_02">学籍状态</TD>
							<td class="TABLE_TD_01">
								
									有
									
								
							</TD>
							<td  class="TABLE_TD_02">班级编号</TD>
							<td class="TABLE_TD_01"></TD>
							<td class="TABLE_TD_02" >学科门类</TD>
							<td  class="TABLE_TD_01"></TD>
						</tr>
					
					
				
				
			</table>
		 </div>
		<div id="d22" class="DIV_HIDDEN" >
			<form action="student/studentinfo/studentinfo.do?method=modifyOrigin" method="post" name="originForm" >
				<table width="100%" CLASS="TABLE_BODY" bordercolor="#777777" border="1" style="border-color:#777777;border-collapse:collapse">
					<tr><th colspan="7"  class="TABLE_TH" >自然信息</th></tr>
					
						
							<tr height="27">
								<td class="TABLE_TD_02">国籍<br></TD>
								<td class="TABLE_TD_01">中华人民共和国<br></TD>
								<td class="TABLE_TD_02">民族<br></TD>
								<td class="TABLE_TD_01">汉族<br></TD>
								<td class="TABLE_TD_02">籍贯<br></TD>
								<td class="TABLE_TD_01">福建省<br></TD>
							</tr>
							<tr height="27">
								<td  class="TABLE_TD_02">考生类别<br></TD>
								<td class="TABLE_TD_01"><br></TD>
								<td  class="TABLE_TD_02">招生类别<br></TD>
								<td  class="TABLE_TD_01"><br></TD>
								<td  class="TABLE_TD_02">生源地<br></TD>
								<td  class="TABLE_TD_01"><br></TD>
							</tr>
							<tr height="27">
								<td  class="TABLE_TD_02">高考科类<br></TD>
								<td class="TABLE_TD_01"><br></TD>
								<td  class="TABLE_TD_02">高考号<br></TD>
								<td class="TABLE_TD_01">10350425151160<br></TD>
								<td  class="TABLE_TD_02">高考总分<br></TD>
								<td class="TABLE_TD_01">649<br></TD>
							</tr>
							<tr height="27">
								<td  class="TABLE_TD_02">高考语文<br></TD>
								<td class="TABLE_TD_01"><br></TD>
								<td  class="TABLE_TD_02">高考数学<br></TD>
								<td class="TABLE_TD_01"><br></TD>
								<td  class="TABLE_TD_02">高考外语<br></TD>
								<td class="TABLE_TD_01"><br></TD>
							</tr>
							<tr height="27">
								<td  class="TABLE_TD_02">手机号<br></TD>
								<td class="TABLE_TD_01"><input  name="mobile"  maxlength="200" value='15996239337' /> <br></TD>
								<td  class="TABLE_TD_02">电子邮箱<br></TD>
								<td class="TABLE_TD_01"><input  name="email" maxlength="200" value='271396067@qq.com'/><br></TD>
								<td class="TABLE_TD_02" >毕业中学<br></TD>
								<td  class="TABLE_TD_01"><input  name="highSchool" maxlength="200" value='大田一中'/><br></TD>
							</tr>
							<tr height="27">
								<td  class="TABLE_TD_02">家庭邮编<br></TD>
								<td class="TABLE_TD_01"><input  name="homeZipCode" maxlength="200" value='366100'/><br></TD>
								<td  class="TABLE_TD_02">家庭电话<br></TD>
								<td class="TABLE_TD_01"><input  name="homePhone"  maxlength="200" value='0598-7225557'/><br></TD>
								<td  class="TABLE_TD_02">家庭住址<br></TD>
								<td class="TABLE_TD_01"><input  name="homeAddress"  maxlength="200" value='福建省三明市大田县均溪镇凤山西路53号'/><br></TD>
							</tr>
							<tr height="27">
								<td  class="TABLE_TD_02">父亲姓名<br></TD>
								<td class="TABLE_TD_01"><input  name="fatherName" maxlength="200"  value='严志垕'/><br></TD>
								<td  class="TABLE_TD_02">父亲单位<br></TD>
								<td class="TABLE_TD_01"><input  name="fatherWorkUnit" maxlength="200"  value='福建省大田县水利局'/><br></TD>
								<td  class="TABLE_TD_02">母亲姓名<br></TD>
								<td class="TABLE_TD_01"><input  name="motherName"  maxlength="200" value='潘晓丁'/><br></TD>
							</tr>
							<tr height="27">
								<td  class="TABLE_TD_02">母亲单位<br></TD>
								<td class="TABLE_TD_01" colspan="5"><input  name="motherWorkUnit"  maxlength="200" value='福建省大田县城关第二小学'/><br></TD>				 
							</tr>
							<tr height="27">
								<td COLSPAN="6" Style="text-align:center">  <a href="javaScript:CheckOrigin();" style="font-size:14px; font-weight:bold;text-align:center"> 保    存</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<label  Style="color:red; font-size:14px; font-weight:bold;"></label>
								</td>
								
							</tr>
						
						
					
				</table>
			</form>
		</div>
		<div id="d33" class="DIV_HIDDEN" >
			<table width="100%" CLASS="TABLE_BODY">
					<tr><th colspan="7"  class="TABLE_TH" >异动信息</th></tr>
					<tr class="TEXT_TITLE">
						<th >异动日期</th>
						<th >原因</th>
						<th >类型</th>
						<th >原年级</th>
						<th >原专业</th>
						<th>现年级</th>
						<th>现专业</th>
					</tr>
					
						
						
							<tr><td COLSPAN="6" class="HighlightText" Style="color:red; font-size:16px; font-weight:bold;">暂无您的异动信息</td></tr>
						
					
				</table>
		</div>
  </div>
  </body>
</html>

  </body>


</html>
