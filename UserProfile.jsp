<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="edu.fau.group2.ourproject.util.*"
	import ="edu.fau.group2.ourproject.util.DBUtil"
	import ="edu.fau.group2.ourproject.services.*"
	import ="edu.fau.group2.ourproject.model.*"
    import ="java.io.*"
    import ="java.util.*"
    import ="java.util.ArrayList"
    import ="java.sql.*"
    import ="java.time.LocalDate"
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile | Update Your Profile</title>

<link rel="stylesheet" type="text/css" href="MasterCSSBetterHalf.css" />

<style type="text/css">



					
					
					
input[type="text"],textArea,#Password, select{
			background-color:white;
			width:350px;
			float:right;
			border-color:#AF0000;
		
			

		}
		
.heighttext, #selectGender{
  			height:20px
		}
		
h1,	h2, h3, h4 {
			color:black;
          	text-align:left;
            font-size:16px;
            
            
			} 
			
		h2{
			font-weight: 100;
			}	
			
			
		#modify{			
					background-color:#FFCEAF;
					margin-top:100px;
					width:650px;
					font-weight:400;
					height:450px;
					border-style:solid;
					border-width:1px;
			

		}		
			
			
 </style>
 

</head>

<body style="font-family: Verdana;"><!--Body Start -->
		<%

				List<Education> eduList = DBUtil.getAllEducation();
				List<PersInterests> PersList = DBUtil.getAllPersInterests();
				List<ProfInterests> ProfList = DBUtil.getAllProfInterests();

		%>
	
	<%
		// AUTHENTICATION
		Integer uid = (Integer)session.getAttribute("sessionID");
		if (uid == null) {
		%>
		<jsp:forward page="Index.jsp"/>
		<%
		
		}// END AUTHENTICATION
	
		UserAccount user = DBUtil.getByIdUserAccount(uid); //call dbutil to get the user in session
		String name = user.getName();
		String lastName = user.getLastName();
		String gender = user.getGender();
		String email = user.getEmail();
		String education = user.getEducation();
		String professionalInterests = user.getProfessionalInterests();
		String personalInterests = user.getPersonalInterests();
		LocalDate datejoined = user.getDateJoined();
		
	%> 		 
  
  		
     

        
        <div id="mainheader">
            <img src="OurLogo.jpg" alt="Our Logo" width=280; height=280><img>
        </div>    
				
        
     <fieldset id ="mainfield"> <!--Main Field Creation-->
        <legend>Account Information :</legend> <!--Web Page Title-->
         <br>
         
         <%
  		out.println("<h3>Hello, "+ name + " "+ lastName +"</h3>");
        out.print("<h4> Member since "+ datejoined + "</h4>");
  		
  		out.print("<h2> This is your current profile below </h2>");
  		out.print("<h2>Gender: "+ gender);
  		out.print("<h2>Email: "+ email);
  		out.print("<h2>Education: "+ education);
  		out.print("<h2>Professional Interests: "+ professionalInterests);
  		out.print("<h2>Personal Interests: "+ personalInterests);
  		%>
            <br>
            <br>
    <form action="EditUser.jsp" method="post">
            
       <fieldset id = "modify">  
                <legend><strong>Modify Your Account/Profile: </strong></legend>
                <br>
                <br>
              
                   
                
				<div><!--personal information div-->
				
                    <div>
                        <label for="name">Name:</label>
				        <input class="heighttext" type="text" id="name" name = "name" placeholder="Enter your first name" maxlength="50" required/>
                    </div><br>
                
                    <div>
                        <label for="Lastname">Last Name:</label>
                        <input class="heighttext" type="text" id="Lastname" name ="Lastname"placeholder="Enter your last name" maxlength="50" required/>
                    </div><br>
                    
                    <div>
                       		<!-- Gender select option-->
                        <label for ="Gender">Gender:</label>
                        <select  name="Gender" id="selectGender">
                        	<option  value=M>M</option>
                        	<option value=F>F</option>
                        
                        
                        </select>
                    </div><br>
                     
                    
                    <div>
                        <label for="email">Email:</label>
                        <input class="heighttext" type="text"  id="email"name = "email" placeholder="Enter your email" maxlength="50" required/>    
                    </div><br>
                   <div>
                        <label for="education">Education:</label>
                        <select name="education" id ="textArea" maxlength="50" required >
                        	<%
                        		for(int i = 0; i < eduList.size(); i++){
                        			out.print("<option value=" + eduList.get(i).getMajorName() + ">" + eduList.get(i).getMajorName()+ "</option>");
                        		}
                        	%>
                        
                        </select>
                        
                                           
                    </div><br>
                    
                     <div>
                        <label for="ProfessionalInterests">Professional Interests:</label>
                        <select name="ProfessionalInterests" id ="textArea"  maxlength="50" required>
                        <%
                        		for(int i = 0; i < ProfList.size(); i++){
                        			out.print("<option value=" + ProfList.get(i).getProfInterest() + ">" + ProfList.get(i).getProfInterest() + "</option>");
                        		}
                        	%>
                   		 </select>
                    </div><br>
                    
                    <div>
                        <label for="PersonalInterests">Personal Interests:</label>
                        <select name="PersonalInterests" id ="textArea"  maxlength="50" required>
                        <%
                        		for(int i = 0; i < PersList.size(); i++){ 
                        			out.print("<option value=" + PersList.get(i).getPerInterest() + ">" + PersList.get(i).getPerInterest() + "</option>");
                         		}
                        
                        %>
                        
                        
                        </select>
                    </div><br>     
                    
                    <div>
        				<label for = "Date" >Today's Date</label>
        				<input class= "heighttext"  type="date" id="datejoined" name= "datejoined" required/>
        		       		
        			</div>
                    

                    
                </div><!--end personal info div-->
       
                 
                 
        
        
        
        
            
                <div>
                    <label for="Username">Username:</label>
				    <input class="heighttext" type="text"id="Username" name = "Username" placeholder="Enter your Username" maxlength="50" required>
                </div><br>
       
        
        
            
                <div>
                    <label for="Password">Password:</label>
				    <input class="heighttext" type="password"  id="Password" name = "Password" placeholder="Enter your Password" maxlength="50" required>
                </div><br>
        
        
          </fieldset>       
          
            <div id="EditUser"><!--edit User button-->
				<input type="submit" id="CreateAccountB" value="Edit my Profile" style="float:left;">
            </div>     
                          
        </form>           
</fieldset><!--end main fieldset-->
        
        
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