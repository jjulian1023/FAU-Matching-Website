<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import ="edu.fau.group2.ourproject.util.*"
	import ="edu.fau.group2.ourproject.services.*"
	import ="edu.fau.group2.ourproject.model.*"
    import ="java.io.*"
    import ="java.util.*"
    import ="java.util.ArrayList"
    import ="java.sql.*"
    %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<title>Found your Manual Match!!</title>
		
			<link rel="stylesheet" type="text/css" href="MasterCSSBetterHalf.css"/>
            
			

			<style>
                
          #mainfield{
                height:auto;
                width: auto;
                border-style:dotted;
            }
        
				a{
					color:black;
					
				}
				
				a:visited{
					color:black;
					}
					
					#Login {
							margin-left:100px;
							margin-top: 0;
							margin-bottom:0;
					}
			</style>
				
		
 </head>



<body>
	
		<div id="mainheader">
			<img src="OurLogo.jpg" alt="Our Logo" width=280; height=280> <img>
            <a href="UserProfile.jsp">
            <img src="UserPhoto2.jpg" id= "UserPhoto" alt="userlogo default"width=50; height=50 style="float: right;" >
            </a>

		</div>
			

		<%
		// AUTHENTICATION
		Integer uid = (Integer)session.getAttribute("sessionID");
		if (uid == null) {
		%>
		<jsp:forward page="Index.jsp"/>
		<%
		
		}// END AUTHENTICATION
	
		UserAccount user = DBUtil.getByIdUserAccount(uid);
		String username = user.getName() + " " + user.getLastName();
		%> 	
		
		<table>
			<tr>
			<th>NAME</th><th>LAST NAME</th><th>GENDER</th><th>EMAIL</th><th>PICTURE</th>
			</tr>
		
		
		<%
		
		int userMatch; //Hold the userId that was a match based on the two parameters
		List<UserAccount> u = DBUtil.getAllUserAccount(); //Call to get a list of users
		String edu = request.getParameter("education"); //Request to get parameter chosen by user
		String prof = request.getParameter("ProfessionalInterests"); //Request to get parameter chosen by user
		//Loop through searches list to find a match based on the two parameters received previously
					for(int i = 0;i < u.size(); i++ ){
					//Conditions to compare parameters chosen by user with exact matches already listed on searches table on 
						if(edu.equalsIgnoreCase(u.get(i).getEducation())){
								if(prof.equalsIgnoreCase(u.get(i).getProfessionalInterests())){
									userMatch = u.get(i).getUserId(); //Holds unique identifier PK that is a match for the 
				
						//Loop through users list to retrieve information of user who run the exact match found in the previous loop
						
						for(int j = 0; j < u.size(); j++ ){
							//Condition to find the match
								if(userMatch == u.get(j).getUserId()){%>
									<!-- When user is found we display user info to a table -->
							
							<tr>
					<td><%=u.get(j).getName() %></td>
					<td><%=u.get(j).getLastName()%></td>
					<td><%=u.get(j).getGender()%></td>
					<td><%=u.get(j).getEmail()%></td>
					<%
						if(u.get(j).getGender().equalsIgnoreCase("M") )
							out.print("<td><img src=Pictures/M.jpg><td>");  
						else
							out.print("<td><img src=Pictures/F.jpg><td>");
					 %>
			
				</tr>
		
						
						
			
			
			<%
			
								}
							}
						}
					}
				}
			%>
			
		
			
				</table> <br>
				
			<div> 
					<a href="MainPage.jsp">
					<input type="submit" id="Login" value="Go Back" style="float:left;"> </a>
		
			</div>
				
				<br>
				<br>
				<br>
				<br>
				

		
			<div id="BottomBottom">
            
                <a href="HomePage.jsp">Home Page</a> |
                <a href="MainPage.jsp">Member Home Page</a> |
                <a href="CreateAccount.jsp">Create Profile</a>    |
                <a href="Index.jsp">Login</a> |
                <a href="SafetyandPrivacyTips.html">Safety and Privacy Tips</a> |
                <a href="AboutUs.html">About Us</a> |
                <a href="TermsandConditions.html">Terms and Conditions</a> |
                <a href="Suggestions.html">Suggestions</a> |
                <a href="RviewPage.html">Reviews</a> |
                <a href="DownloadOurAppLatestVersion.html">Download Our App</a> |
                <a href="ContactUsAtBetterHalf.html">Contact Us</a>     
                
           </div>
			
			
			<div id="footer">	
					
				<h5>Copyright 2021 | Better Half | | 
				<a href ="mailto:Dblazanovic2015@fau.edu">Developed by The Best Group LLC</a> | Direct Line: 561-809-9833</h5> 
				
			</div>



		</body>
		
</html>