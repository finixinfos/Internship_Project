<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/validationEngine.jquery.css"
	type="text/css" />
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
			
				$("#formid").validationEngine();
					
			});
</script>

<script type="text/javascript">
$(document).ready(function(){
$("#degreeid").on('change',function(){
	var degreeid=$("#degreeid").val();
	alert(degreeid);
	jQuery.ajax({
	data	:	"degreeid=" +degreeid,
	url		:	"getBranch.action",
	type	:	"POST",
	success:function(results){
		alert(results);
		$("#branchDiv").html(results);
	}
	})
});
$("#secondDegreeid").on('change',function(){
	var secondDegreeid=$("#secondDegreeid").val();
	alert(secondDegreeid);
	jQuery.ajax({
	data	:	"secondDegreeid=" +secondDegreeid,
	url		:	"getSecondBranch.action",
	type	:	"POST",
	success:function(results){
		alert(results);
		
		$("#secondBranchDiv").html(results);
	}
	})
});

$("#collegeid").on('keypress',function(){
	var collegeid=$("#collegeid").val();
	alert(collegeid);
	jQuery.ajax({
	data	:	"secondDegreeid=" +secondDegreeid,
	url		:	"getSecondBranch.action",
	type	:	"POST",
	success:function(results){
		alert(results);
		
		$("#secondBranchDiv").html(results);
	}
	})
});
$("#checkid").on('change',function(){
if($('#checkid').is(":checked"))
{
$('#secondDegreeid').val('Please Select Degree');
$('#secondBranchDiv').empty();
$(".dualdegreediv").css("display","block");
$(".secondBranchDiv").css("display","block");
}
else
{
$(".dualdegreediv").css("display","none");
$(".secondBranchDiv").css("display","none");
}
});
});
</script>

</head>
<body>
<div><s:form id="formid" theme="simple" action="sample">
	<table border="0">
		<tr>
			<td>First Name:</td>
			<td><s:textfield name="internBean.firstName" maxlength="255"
				cssClass="txt validate[required]" /></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><s:textfield name="internBean.lastName" maxlength="255"
				cssClass="txt validate[required]" /></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><s:textfield name="internBean.email" maxlength="255"
				cssClass="txt validate[required,custom[email]]" /></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><s:password name="internBean.password" maxlength="255"
				id="password" cssClass="txt validate[required,custom[pwd]]" /></td>
		</tr>
		<tr>
			<td>Confirm-Password:</td>
			<td><s:password maxlength="255"
				cssClass="txt validate[required,equals[password]]" /></td>
		</tr>
		<tr>
			<td>Mobile:</td>
			<td><s:textfield name="internBean.mobile_number" maxlength="255"
				cssClass="txt validate[required,custom[phone]]" /></td>
		</tr>
		<tr>
			<td>College/University:</td>
			<td><s:textfield name="internBean.college_name" cssClass="txt validate[required]" maxlength="255"/> </td>
		</tr>
		<tr>
			<td>Degree:</td>
			<td><s:select list="#{'1':'BE/B.Tech','2':'BA'}"
				name="internBean.degreeId" headerKey=""
				headerValue="Please Select Degree" id="degreeid"
				cssClass="validate[required]" /></td>
			<td><s:checkbox name="" id="checkid" />Dual Degree</td>
		</tr>
		<tr>
			<td colspan="2">
			<div id="branchDiv"></div>
			</td>
		</tr>
		<tr>
			<td>
			<div class="dualdegreediv" style="display: none;">Second Degree:</div>
			</td>
			<td>
			<div class="dualdegreediv" style="display: none;"><s:select
				list="#{'1':'BE/B.Tech','2':'BA'}" name="internBean.second_degreeId"
				headerKey="0" headerValue="Please Select Degree" id="secondDegreeid"
				cssClass="validate[required]" /></div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<div class="secondBranchDiv" style="display: none;" id="secondBranchDiv"></div>
			
			</td>
		</tr>
		<tr>
			<td>Expected Year of Passout:</td>
			<td><s:select list="{'2000','2001'}" 
				name="internBean.year_of_passedout" headerKey=""
				headerValue="Please Select Year" cssClass="validate[required]" /></td>
		</tr>
		<tr>
			<td>verify:</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="2"><s:checkbox fieldValue="true" name="name"
				cssClass="validate[required]" /> I agree to the <a href="terms.jsp">Terms
			of Service</a></td>
		</tr>
		<tr>
			<td colspan="2"><s:submit value="REGISTER"></s:submit></td>
		</tr>
	</table>
</s:form></div>
</body>
</html>

