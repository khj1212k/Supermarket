<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>学生超市管理系统</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css" />
</head>
<script language="JavaScript">


function mycheck(){
   if(isNull(form1.Domitory_BuildingID.value)){  
   alert("商品名称！"); 
   return false;
   }
   if(isNull(form1.Domitory_Name.value)){
   alert("售价！");
   return false;
   }
   if(isNull(form1.Domitory_Type.value)){
   alert("大类名称！");
   return false;
   }
   if(isNull(form1.Domitory_Number.value)){
   alert("小类名称！");
   return false;
   }
   if(isNull(form1.Domitory_Tel.value)){
   alert("货架编号！");
   return false;
   }
}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
   
   
</script>
<body>
<center>
  <table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="60" bgcolor="#E6F5FF" style="color:#06F; font-size:19px; font-weight:bolder; padding-left:50px;">学生超市管理系统</td>
    </tr>
    <tr>
      <td height="30" background="Images/MenuBg.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="500" align="center" valign="top"><table width="900" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="191" height="500" align="center" valign="top" background="Images/leftbg.jpg">
          <%@ include file="Left.jsp"%>
          </td>
          <td width="709" align="center" valign="top" bgcolor="#F6F9FE"><table width="709" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">添加宿舍</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
                <form name="form1" method="post" action="ProductAddSave.action" onSubmit="return mycheck()" >
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="33%" height="30" align="right">&nbsp;</td>
                      <td width="67%">&nbsp;</td>
                    </tr>
                    

                    <tr>
                        <td height="30" align="right"><span style="color:red;">*</span>商品编号：</td>
                        <td><input name="Pno" type="text" class="text2" id="Pno"></td>
                    </tr>
                    <tr>
                        <td height="30" align="right"><span style="color:red;">*</span>商品名称：</td>
                        <td><input name="Pname" type="text" class="text2" id="Pname"></td>
                    </tr>
                    
                    <tr>
                      <td height="30" align="right"><span style="color:red;">*</span>售价：</td>
                      <td><input name="Sellprice" type="text" class="text2" id="Sellprice"></td>
                    </tr>
                    <tr>
                        <td height="30" align="right"><span style="color:red;">*</span>大类编号：</td>
                        <td><input name="Vno" type="text" class="text2" id="Vno"></td>
                    </tr>
                    <tr>
                      <td height="30" align="right"><span style="color:red;">*</span>大类名称：</td>
                      <td><input name="Vname" type="text" class="text2" id="Vname"></td>
                    </tr>
                    <tr>
                        <td height="30" align="right"><span style="color:red;">*</span>小类编号：</td>
                        <td><input name="Lno" type="text" class="text2" id="Lno"></td>
                    </tr>
                    <tr>
                      <td height="30" align="right"><span style="color:red;">*</span>小类名称：</td>
                      <td><input name="Lname" type="text" class="text2" id="Lname"></td>
                    </tr>
                    <tr>
                      <td height="30" align="right"><span style="color:red;">*</span>货架编号：</td>
                      <td><input name="Shelfno" type="text" class="text2" id="Shelfno"></td>
                    </tr>
                    <tr>
                      <td height="30">&nbsp;</td>
                      <td><input type="submit" name="button" id="button" value="添加商品">
                        &nbsp;&nbsp;
                        <input type="button" name="button2" id="button2" value="返回上页" onClick="javascript:history.back(-1);"></td>
                    </tr>
                  </table>
                </form>
              </td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="35" background="Images/bootBg.jpg">&nbsp;</td>
    </tr>
  </table>

</center>
</body>
</html>
