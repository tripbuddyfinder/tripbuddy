package org.app.models;

public class student {
	private int sid,rollno;
	private String name,course;
	
	public void setSid(int sid)
	{
		this.sid=sid;
	}
	public int getSid()
	{
		return sid;
	}
	
	public void setRollno(int rollno)
	{
	this.rollno=rollno;	
	}
	public int getRollno()
	{
		return rollno;
	}
	
	public void setName(String name)
	{
		this.name=name;
	}
	public String getName()
	{
		return name;
	}
	
	public void setCourse(String course)
	{
		this.course=course;
	}
	public String getCourse()
	{
		return course;
	}
}
