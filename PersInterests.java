package edu.fau.group2.ourproject.model;
import java.util.List;

public class PersInterests {
	
	//declaring variables
	private int id;
	private String perInterest;
	
	public PersInterests(){
		
	}
	
	public PersInterests(int perInterestsID, String perInterests) {
		super ();
		
		this.id = perInterestsID;
		this.setPerInterest(perInterests);
	}

	public int getId() {
		return id;
	}

	public void setId(int string) {
		this.id = string;
	}

	public String getPerInterest() {
		return perInterest;
	}

	public void setPerInterest(String perInterest) {
		this.perInterest = perInterest;
	}
	public static List<PersInterests> getAll() {
		return null;
	}
	
}
