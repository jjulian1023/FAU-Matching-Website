package edu.fau.group2.ourproject.model;
import java.util.List;


	//This class represents Professional interests
	public class ProfInterests {
		
		
		//declaring variables
		private int id;
		private String profInterest;
		
		public ProfInterests() {
			
		}
		
		public ProfInterests(int ProfInterestsID, String profInterests) {
			super();
			
			this.id = ProfInterestsID;
			this.setProfInterest(profInterests);
		}
		
		
		public int getProfInterestsID(){
			return id;
		}
		public void setProfInterestsID(int string){
			this.id = string;
		}

		public String getProfInterest() {
			return profInterest;
		}

		public void setProfInterest(String profInterest) {
			this.profInterest = profInterest;
		}
		public static List<ProfInterests> getAll() {
			return null;
		}
		
	
	
	
	
	}
	
		
		
	
	    
