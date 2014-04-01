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
<h3>EXPERIENCE/EDUCATION</h3>
<hr>
	<table border="0">
		<tr>
			<td>Work Experience:</td>
			<td><s:select list="{'No Experience','<2 years','>2 years'}" name="" value="" headerKey="" headerValue="Please Select Experiance" cssClass=""/></td>
		</tr>
		<tr>
			<td><div class="internshipclass">Job / Internship Title:</div></td>
			<td><div class="internshipclass"><s:textfield name="" maxlength="255" cssClass=""/></div> </td>
		</tr>
		<tr>
			<td>Job / Internship Category:</td>
			<td><s:textfield name="" maxlength="255" cssClass=""/></td>
		</tr>
		<tr>
			<td>College/University:</td>
			<td><s:textfield name="" value="" maxlength="255" cssClass=""/></td>
		</tr>
		<tr>
			<td>Degree:</td>
			<td><s:select list="{'BE','B.Tech','MCA'}" name="" value="" headerKey="" headerValue="Please Select Degree" cssClass=""/><s:checkbox name="" id="" />Dual Degree</td>
		</tr>
		<tr>
			<td>Branch:</td>
			<td><s:select list="{'IT','CSE','ECE'}" name="" value="" headerKey="" headerValue="Please Select Branch" cssClass=""/></td>
		</tr>
		<tr>
			<td>Expected Year Of Passout:</td>
			<td><s:select list="{'2000','2001','2002'}" name="" value="" headerKey="" headerValue="Please Select Year" cssClass=""/></td>
		</tr>
		<tr>
			<td>
			<div class="dualdegreediv" style="display: none;">Second Degree:</div>
			</td>
			<td>
			<div class="dualdegreediv" style="display: none;"><s:select list="#{'1':'BE/B.Tech','2':'BA'}" name="internBean.second_degreeId" headerKey="0" headerValue="Please Select Degree" id="secondDegreeid" cssClass="validate[required]" /></div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<div class="secondBranchDiv" style="display: none;" id="secondBranchDiv"></div>	
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
			<div class="secondYearOfPassedDiv" style="display: none;" id="secondBranchDiv"></div>
			
			</td>
		</tr>
		<tr>
			<td></td>
			<td><s:submit value="Save"/></td>
		</tr>
	</table>
</s:form>
</body>
</html>