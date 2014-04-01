package com.infobay.action;

import java.util.HashMap;
import java.util.Map;

import com.infobay.bean.InternBean;
import com.opensymphony.xwork2.ActionSupport;

public class SampleAction extends ActionSupport{
InternBean internBean=new InternBean();
Map<Integer, String> branchMap=new HashMap<Integer, String>();
Map<Integer, String> branchMap1=new HashMap<Integer, String>();
String aaa="";
public Map<Integer, String> getBranchMap() {
	return branchMap;
}

public void setBranchMap(Map<Integer, String> branchMap) {
	this.branchMap = branchMap;
}

public InternBean getInternBean() {
	return internBean;
}

public void setInternBean(InternBean internBean) {
	this.internBean = internBean;
}
public String sample()
{
	System.out.println("HAI WELCOME");
	
	System.out.println(internBean.getFirstName());
	System.out.println(internBean.getLastName());
	System.out.println(internBean.getEmail());
	System.out.println(internBean.getMobile_number());
	System.out.println(internBean.getCollege_name());
	System.out.println(internBean.getDegreeId());
	System.out.println(internBean.getSecond_degreeId());
	System.out.println(internBean.getBranchId());
	System.out.println(internBean.getSecond_degreeBranchId());
	
	
	return SUCCESS;
}
public String getSecondBranch()
{
	branchMap1.put(3, "CSE");
	branchMap1.put(4, "EEE");
	setBranchMap(branchMap1);
	return SUCCESS;
}
public String getBranch()
{
	branchMap.put(1, "ECE");
	branchMap.put(2, "IT");
	setBranchMap(branchMap);
	return SUCCESS;
}

public Map<Integer, String> getBranchMap1() {
	return branchMap1;
}

public void setBranchMap1(Map<Integer, String> branchMap1) {
	this.branchMap1 = branchMap1;
}
}
