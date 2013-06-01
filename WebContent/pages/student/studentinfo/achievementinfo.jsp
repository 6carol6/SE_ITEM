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
    <title>成绩信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

    <style type="text/css"><!--<%@ include file="/pages/css/table.css"%>--></style>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<style type="text/css">
<!--
.STYLE2 {
	font-size: 14px;
	font-weight: bold;
	color: #ffffff;
}
-->
</style>
  
  <body class="BODY"  leftmargin="50" rightmargin="50" onLoad="javascript:Init();">
  
  <div  align="center">
    <TABLE width="100%"  height="100%" align="left" >
      <TR>
        <TD colspan="4">&nbsp;</TD>
      </TR>
      
      <TR align="left">
      	<TD width="50">&nbsp;</TD>
        <TD width="150"  align="right" valign="top">
			<div>
				<table  width="100%" height="100%" border="0"  bordercolor="#3366CC">
				  <tr class="TEXT_TITLE"><td>请选择学期 </td></tr>
				  <tr height="5"><td > </td>
				  </tr>
					
					  
					  	
						<tr align="center" height="22">
						  <td><a  href="student/studentinfo/achievementinfo.do?method=searchTermList&termCode=20121"/>2012-2013学年第一学期</a> </td>
						</tr>
					  
					  	
						<tr align="center" height="22">
						  <td><a  href="student/studentinfo/achievementinfo.do?method=searchTermList&termCode=20112"/>2011-2012学年第二学期</a> </td>
						</tr>
					  
					  	
						<tr align="center" height="22">
						  <td><a  href="student/studentinfo/achievementinfo.do?method=searchTermList&termCode=20111"/>2011-2012学年第一学期</a> </td>
						</tr>
					  
					  	
						<tr align="center" height="22">
						  <td><a  href="student/studentinfo/achievementinfo.do?method=searchTermList&termCode=20102"/>2010-2011学年第二学期</a> </td>
						</tr>
					  
					  	
						<tr align="center" height="22">
						  <td><a  href="student/studentinfo/achievementinfo.do?method=searchTermList&termCode=20101"/>2010-2011学年第一学期</a> </td>
						</tr>
					  
					
					
				    
				    
				       <tr></tr><tr></tr>
					   
					   <tr class="TEXT_TITLE"><td><a  href="student/studentinfo/achievementinfo.do?method=searchCreditStat" class="ButtonLink "> 学分统计</a> </td></tr>
				       
				       <tr height="5"><td > </td></tr>
				    
			   </table>
			</div>
		</TD>
		<TD width="10" >&nbsp;</TD>
        <TD align="left" valign="top">
	        
	        	
	        		<DIV align=center style="margin-bottom: 5px">
					<a style="font-size: 14px; text-align: center;font-weight: bold;">2012-2013学年第一学期</a>
					</DIV>
					<table width="95%" class="TABLE_BODY" bordercolor="#777777" border="1" style="border-collapse:collapse">
						
						<tr class="TABLE_TH">
						  <th align="center">序号</th>
						  <th align="center">课程编号</th>
						  <th align="center">课程名称</th>
						  <th align="center">英文名称</th>
						  <th align="center">课程类型</th>
						  <th align="center">学分</th>
						  <th align="center">总评</th>
						  <th align="center">备注</th>
						  <th align="center">交换成绩对应课程</th>
						  <!--  <th align="center">操作</th>-->
						</tr>
						
						  
							
							
								<tr align="left"  
								  
									 class="TABLE_TR_01"
									
								  
								  >
								  <td align="center" valign="middle">1</td>
								  <td align="center" valign="middle">004607</td>
								  <td valign="middle">俄罗斯文学经典的当代意义</td>
								  <td valign="middle">Contemporary Interpretation of Russian Classics</td>
								  <td align="center" valign="middle">
								  	通识
								  </td>
								  <td align="center" valign="middle">3</td>
								  <td align="center" valign="middle">
								  	
								  	
								  	
								  		
											
								  			
								  				<ul
								  					
								  					 style="color:black" 
								  				>
								  					80
								  				</ul>
								  			
								  		
								  	
								  </td>
								  <td align="center" valign="middle">
								  	
								  </td>
								  <td align="left" valign="middle">
								  	
								  	
								    
								  	
								  </td>
								  <!-- 
								  <td>
								  
								 
								  </td>
								   -->
								</tr>
							
						  
							
							
								<tr align="left"  
								  
									
									 class="TABLE_TR_02" 
								  
								  >
								  <td align="center" valign="middle">2</td>
								  <td align="center" valign="middle">000010</td>
								  <td valign="middle">马克思主义基本原理概论</td>
								  <td valign="middle">Basic Principles of Marxism</td>
								  <td align="center" valign="middle">
								  	通修
								  </td>
								  <td align="center" valign="middle">3</td>
								  <td align="center" valign="middle">
								  	
								  	
								  	
								  		
											
								  			
								  				<ul
								  					
								  					 style="color:black" 
								  				>
								  					70
								  				</ul>
								  			
								  		
								  	
								  </td>
								  <td align="center" valign="middle">
								  	
								  </td>
								  <td align="left" valign="middle">
								  	
								  	
								    
								  	
								  </td>
								  <!-- 
								  <td>
								  
								 
								  </td>
								   -->
								</tr>
							
						  
							
							
								<tr align="left"  
								  
									 class="TABLE_TR_01"
									
								  
								  >
								  <td align="center" valign="middle">3</td>
								  <td align="center" valign="middle">221030</td>
								  <td valign="middle">算法设计与分析</td>
								  <td valign="middle">Algorithm Design & Analysis</td>
								  <td align="center" valign="middle">
								  	平台
								  </td>
								  <td align="center" valign="middle">4</td>
								  <td align="center" valign="middle">
								  	
								  	
								  	
								  		
											
								  			
								  				<ul
								  					
								  					 style="color:black" 
								  				>
								  					78
								  				</ul>
								  			
								  		
								  	
								  </td>
								  <td align="center" valign="middle">
								  	
								  </td>
								  <td align="left" valign="middle">
								  	
								  	
								    
								  	
								  </td>
								  <!-- 
								  <td>
								  
								 
								  </td>
								   -->
								</tr>
							
						  
							
							
								<tr align="left"  
								  
									
									 class="TABLE_TR_02" 
								  
								  >
								  <td align="center" valign="middle">4</td>
								  <td align="center" valign="middle">221050</td>
								  <td valign="middle">计算机网络</td>
								  <td valign="middle">Foundations of Computer Networks</td>
								  <td align="center" valign="middle">
								  	平台
								  </td>
								  <td align="center" valign="middle">4</td>
								  <td align="center" valign="middle">
								  	
								  	
								  	
								  		
											
								  			
								  				<ul
								  					
								  					 style="color:black" 
								  				>
								  					88
								  				</ul>
								  			
								  		
								  	
								  </td>
								  <td align="center" valign="middle">
								  	
								  </td>
								  <td align="left" valign="middle">
								  	
								  	
								    
								  	
								  </td>
								  <!-- 
								  <td>
								  
								 
								  </td>
								   -->
								</tr>
							
						  
							
							
								<tr align="left"  
								  
									 class="TABLE_TR_01"
									
								  
								  >
								  <td align="center" valign="middle">5</td>
								  <td align="center" valign="middle">221110</td>
								  <td valign="middle">数据库概论</td>
								  <td valign="middle">Introduction to Database</td>
								  <td align="center" valign="middle">
								  	选修
								  </td>
								  <td align="center" valign="middle">4</td>
								  <td align="center" valign="middle">
								  	
								  	
								  	
								  		
											
								  			
								  				<ul
								  					
								  					 style="color:black" 
								  				>
								  					89
								  				</ul>
								  			
								  		
								  	
								  </td>
								  <td align="center" valign="middle">
								  	
								  </td>
								  <td align="left" valign="middle">
								  	
								  	
								    
								  	
								  </td>
								  <!-- 
								  <td>
								  
								  
								  <input type="button" style="font-size:12px;border: #7b9ebd 1px solid;padding:1px;text-align:center;width:90px;" value="申请注销" onclick="javascript:doApplyCourseCancel('11144944','20121','数据库概论')"/><br/>
								  
								  
								  
								 
								  </td>
								   -->
								</tr>
							
						  
							
							
								<tr align="left"  
								  
									
									 class="TABLE_TR_02" 
								  
								  >
								  <td align="center" valign="middle">6</td>
								  <td align="center" valign="middle">221300</td>
								  <td valign="middle">Java程序设计</td>
								  <td valign="middle">Programming in Java </td>
								  <td align="center" valign="middle">
								  	选修
								  </td>
								  <td align="center" valign="middle">3</td>
								  <td align="center" valign="middle">
								  	
								  	
								  	
								  		
											
								  			
								  				<ul
								  					
								  					 style="color:black" 
								  				>
								  					82
								  				</ul>
								  			
								  		
								  	
								  </td>
								  <td align="center" valign="middle">
								  	
								  </td>
								  <td align="left" valign="middle">
								  	
								  	
								    
								  	
								  </td>
								  <!-- 
								  <td>
								  
								  
								  <input type="button" style="font-size:12px;border: #7b9ebd 1px solid;padding:1px;text-align:center;width:90px;" value="申请注销" onclick="javascript:doApplyCourseCancel('11198265','20121','Java程序设计')"/><br/>
								  
								  
								  
								 
								  </td>
								   -->
								</tr>
							
						  
							
							
								<tr align="left"  
								  
									 class="TABLE_TR_01"
									
								  
								  >
								  <td align="center" valign="middle">7</td>
								  <td align="center" valign="middle">770263</td>
								  <td valign="middle">现代网页编程入门实训</td>
								  <td valign="middle">Modern Webpage Programming</td>
								  <td align="center" valign="middle">
								  	选修
								  </td>
								  <td align="center" valign="middle">2</td>
								  <td align="center" valign="middle">
								  	
								  		无成绩
								  	
								  	
								  	
								  </td>
								  <td align="center" valign="middle">
								  	
								  	未参与学习
								  	
								  </td>
								  <td align="left" valign="middle">
								  	
								  	
								    
								  	
								  </td>
								  <!-- 
								  <td>
								  
								 
								  </td>
								   -->
								</tr>
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
							
							
						  
						
						
					</table>
					<p style="color: #0000FF">注：如果成绩有疑问，请联系本院系教务员老师。</p>
					<p style="color: #0000FF">关于成绩的说明：<br>
											1、课程性质为“通修”、“平台”、“核心”的课程是属于必修课，如果不及格，必须申请重修并通过后才能满足毕业要求；<br>
											2、课程性质为“选修”的课程，除了部分专业会指定某些课程必须修读之外，一般只需选修总学分达到一定要求即可，单门课程不做要求；<br>
											3、公选课（即课程号以77、78、61开头的课程），无单独的学分要求，仅算入毕业总学分，单门课程无成绩或不及格无任何影响；<br>
											4、通识课（即课程号以002、003、004、37、500开头的课程），只需及格的课程总学分达到14的要求即可，单门课程无成绩或不及格无任何影响；（2009级因课程资源有限，降低为8个，部分大三搬至鼓楼的09级院系降低为6个）<br>
					</p>
					<p style="color: #0000FF">
					
					<input type="button" style="font-size:12px;border: #7b9ebd 1px solid;padding:1px;text-align:center;width:90px;" onclick="javascript:doAchieveConfirm()" value="成绩确认"/>
					
					</p>
					<p style="color:red">提醒：如果英文名缺失或者觉得翻译不确切，建议你将课程号、中文名、以及正确的英文名发送至shenqun@nju.edu.cn，邮件标题为“课程英文名问题”。发送邮件1~2天后再次点击确认。</p>
					
  					
  					
				
				
			
		</TD>
      </TR>
    </TABLE>
  </div>
  </body>
</html>

  </body>


</html>
