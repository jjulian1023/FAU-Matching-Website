package edu.fau.group2.ourproject.util;


//importing model classes to test
import edu.fau.group2.ourproject.model.Education;
import edu.fau.group2.ourproject.model.PersInterests;
import edu.fau.group2.ourproject.model.ProfInterests;
import edu.fau.group2.ourproject.model.UserAccount;




public class TestApplication {

	public static void main(String[] args) {
		
		boolean didSave = false;
		// insert / create 
		/*
		Education e = new Education("MIS", 153);
		didSave = DBUtil.create(e);
		if(didSave){
			System.out.print("Education has been added to database!");
		}
		else{
			System.out.print("There was an error, try again");
		}
		*/
		
		
		/*
		//delete
		didSave = DBUtil.delete3(153);
		if(didSave){
			System.out.print("Education has been deleted");
		}
		else {
			System.out.print("Education has NOT BEEN deleted");
		}
		*/
		
		//search
		
		/*
		UserAccount e = DBUtil.getById1(4);
		System.out.print("their email is  " + e.getName());
		*/
		
		//update
		/*
		Education e = null;
		e = DBUtil.getById3(154);
		e.setMajorName("hi i am testing");
		DBUtil.updateEducation(e);
		*/
		
		
		
		
		
	}

}








<% /* TOO ADD IN CHOOSE CRITERIA
<br>
<div>
    <label for="PersonalInterests">Personal Interests:</label>
    <select name="PersonalInterests" required>
    <%
    		for(int i = 0; i < PersList.size(); i++){ 
    			out.print("<option value=" + PersList.get(i).getId() + ">" + PersList.get(i).getPerInterest() + "</option>");
     		}
    
    %>
    
    
    </select>
</div>

>%























int priceId; //Holdsthe value of the priceId got from the search that was a match
int userMatch; //Hold the userId that was a match based on the two parameters
List<UserAccount> u = DBUtil.getAllUserAccount(); //Call to get a list of users
String activity = request.getParameter("activity"); //Request to get parameter chosen by user
String region = request.getParameter("region"); //Request to get parameter chosen by user
//Loop through searches list to find a match based on the two parameters received previously
			for(int j = 0;j < u.size(); j++ ){
			//Conditions to compare parameters chosen by user with exact matches already listed on searches table on 
			
				if(activity.equalsIgnoreCase(s.get(i).getActivity())){
						if(region.equalsIgnoreCase(s.get(i).getRegion())){
							userMatch = s.get(i).getUserId(); //Holds unique identifier PK that is a match for the 
								
							priceId = s.get(i).getPriceId(); //Holds value of attribute of the searches table
				//Loop through users list to retrieve information of user who run the exact match found in the 
				previous loop
				for(int j = 0; j < u.size(); j++ ){
					//Condition to find the match
						if(userMatch == u.get(j).getUserId()){%>
							<!-- When user is found we display user info to a table -->
			<tr>
			<td><%=u.get(j).getName() %></td>
			<td><%=u.get(j).getLastName() %></td>
			<td><%=u.get(j).getGender()%></td>
			<td><%=u.get(j).getProfessionalInterests() %></td>
			<td><%=u.get(j).getEducation() %></td>
			<td><%=u.get(j).getPersonalInterests() %></td>
			<td><%=u.get(j).getEmail()%></td>
			</tr>
