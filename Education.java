package edu.fau.group2.ourproject.model;
import java.util.List;

public class Education {
	
	
	//declaring variables
	private String majorName;
	private int majorId;
	
	public Education() {
		
	}
	
	public Education(String majorname, int majorID){
		super();
		
		this.setMajorName(majorname);
		this.majorId = (majorID);
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public int getMajorId() {
		return majorId;
	}

	public void setMajorId(int string) {
		this.majorId = string;
	}
	public static List<Education> getAll() {
		return null;
	}
	

}
