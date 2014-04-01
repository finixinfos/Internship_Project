<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<s:form theme="simple">
<h3>MAIN PROFILE</h3>
<hr>
	<table border="0">
		<tr>
			<td>Name:</td>
			<td><s:textfield name="internBean." maxlength="255" cssClass="" /></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><s:textfield name="" maxlength="255" cssClass="" /></td>
		</tr>
		<tr>
			<td>E-mail:</td>
			<td><s:textfield name="" maxlength="255" cssClass=""/></td>
		</tr>
		<tr>
			<td>Phone:</td>
			<td><s:textfield name="" maxlength="255" cssClass=""/></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><s:select list="{'india','usa','uk'}" name="" value="" headerKey="" headerValue="Please Select Country" cssClass=""/></td>
		</tr>
		<tr>
			<td>State/Region:</td>
			<td><s:select list="{'tamilnadu','kerala','andra','karnataka'}" name="" value="" headerKey="" headerValue="Please Select State/Region" cssClass=""/></td>
		</tr>
		<tr>
			<td>City:</td>
			<td><s:select list="{'chennai','madurai','namakkal','salem'}" name="" value="" headerKey="" headerValue="Please Select State/Region" cssClass=""/></td>
		</tr>
		<tr>
		<td></td>
		<td><s:submit value="Save"/></td>
		</tr>
</table>
</s:form>
</body>
</html>