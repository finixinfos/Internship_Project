<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-ui.js"></script>
<script>
$(function() {
$( "#datepicker" ).datepicker({ 
minDate: 0, 
maxDate: "+1M", 
displayFormat:"dd-mm-yyyy",
});
$( "#datepicker1" ).datepicker({ 
minDate: 0, 
maxDate: "+1M", 
displayFormat:'dd-mm-yyyy',
});
});
</script>
<script type="text/javascript">
$(document).ready(function(){
$("#countryid").on('change',function(){
	var countryid=$("#countryid").val();
	alert(countryid);
	jQuery.ajax({
	data	:	"countryid=" +countryid,
	url		:	"getState.action",
	type	:	"POST",
	success:function(results){
		alert(results);
		$("#stateDiv").html(results);
	}
	})
});
$("#stateDiv").on('change',function(){
	var stateid=$("#stateid").val();
	alert(stateid);
	jQuery.ajax({
	data	:	"stateid=" +stateid,
	url		:	"getCity.action",
	type	:	"POST",
	success:function(results){
		alert(results);
		
		$("#cityDiv").html(results);
	}
	})
});
});
</script>
</head>
<body>
<s:form theme="simple" action="" id="formId">
	<table>
		<tr>
			<td>DESIRED EMPLOYMENT</td>
		</tr>
		<tr>
			<td>Profile Summary:</td>
			<td><s:textfield name="" cssClass="" /></td>
		</tr>
		<tr>
			<td>Internship Category Primary:</td>
			<td><s:textfield name="" cssClass="" /></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><s:select list="#{'1':'India','2':'USA'}" id="countryid" name="" headerKey="0" headerValue="Please Select Country" ></s:select> </td>
		</tr>
		<tr>
			<td colspan="2">
			<div id="stateDiv"></div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<div id="cityDiv"></div>
			</td>
		</tr>
		<tr>
			<td>Position Type:</td>
			<td><s:checkboxlist list="{'On-Site','Off-Site','Flexible'}" name="" /> </td>
		</tr>
		<tr>
			<td>Availability</td>
			<td></td>
		</tr>
		<tr>
			<td>Start Date:</td>
			<td><s:textfield name="sa" id="datepicker" />
		</tr>
		<tr>
			<td>End Date:</td>
			<td><s:textfield name="" id="datepicker1" /></td>
		</tr>
	</table>
</s:form>
</body>
</html>