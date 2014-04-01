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
<s:form>
	<h3>PERSONAL INFORMATION</h3>
	<hr>
	<table border="0">
		<tr>
			<td>Gender:</td>
			<td><s:radio list="{'Male','Female','Decline To Identify'}"
				name="" value="male" cssClass=""></s:radio></td>
		</tr>
		<tr>
			<td>Known Languages :</td>
			<td><s:textfield name="" maxlength="255" cssClass="" /></td>
		</tr>
		<tr>
			<td>Birth date:</td>
			<td><s:textfield name="" id="datepicker" /></td>
		</tr>
		<tr>
			<td></td>
			<td><s:file name="" /></td>
		</tr>
		<tr>
		<td></td>
		<td>Note: Maximum file size 500k</td>
		</tr>
		<tr>
			<td>Our photo:</td>
			<td><img
				src="images/Penguins.jpg"
				width="100" height="100"></td>
		</tr>
		<tr>
			<td></td>
			<td><s:submit value="Save" /></td>
		</tr>
	</table>
</s:form>
</body>
</html>