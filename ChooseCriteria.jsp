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
   
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



	
		<title>Choose Your Criteria</title>
		
			<link rel="stylesheet" type="text/css" href="MasterCSSBetterHalf.css"/>
            <a href="UserProfile.jsp">
            <img src="UserPhoto2.jpg" id= "UserPhoto" alt="userlogo default"width=50; height=50 style="float: right;" >
            </a>

			<style>
                
          #mainfield{
                height:auto;
                width: auto;
                
            }
         #degreefield{
                margin: auto;
                height:200;
                width:500;
                clear:left;
                border-style: solid;
            }
            #professionalinterestsfield{
                margin: auto;
                height:200;
                width:500;
                clear:left;
                border-style: solid;
            }
            #personalinterestsfield{
                margin: auto;
                height:200;
                width:500;
                clear:left;
                border-style: solid;
            }
            #findyourmatchesbutton{
                background-color: #FF914D;
                color:floralwhite ;
                padding: 20px 30px; 
                font-size: 20px;
                border-color: #AF0000;
                font-style: oblique;
            }
            #findyourmatchesfield{
                float:right;
                height:inherit;
                width:inherit;
                border-style: hidden;
            }
        
				
			</style>
				
		
 </head>
		

	

		<body style="font-family: Verdana;">
		
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
	
		UserAccount user = DBUtil.getByIdUserAccount(uid);
		String username = user.getName() + " " + user.getLastName();
		%> 	
	
	       <div id="mainheader">
				<img src="OurLogo.jpg" alt="Our Logo" width=280; height=280><img>
		  </div>
        
    <fieldset id ="mainfield"> <!--Main Field Creation-->
       
        <form class="features" action="FindMatchMan.jsp" method="post">
           
        <fieldset id = "modify"> <!--Personal Info Field Creation-->
                <legend><strong>Choose Your Matching Criteria:</strong></legend>
                
              
<br>
<br>                   
                <div><!--personal information div-->
					
                    
                    <div>
                        <label for="education">Education:</label>
                        <select name="education">
                        	<%
                        		for(int i = 0; i < eduList.size(); i++){
                        			out.print("<option value=" + eduList.get(i).getMajorName() + ">" + eduList.get(i).getMajorName() + "</option>");
                        		}
                        	%>
                        
                        </select>
                        
                                           
                    </div>
                    <br>
                    <div>
                        <label for="ProfessionalInterests">Professional Interests:</label>
                        <select name="ProfessionalInterests" required>
                        <%
                        		for(int i = 0; i < ProfList.size(); i++){
                        			out.print("<option value=" + ProfList.get(i).getProfInterest() + ">" + ProfList.get(i).getProfInterest() + "</option>");
                        		}
                        	%>
                   		 </select>
                    </div>
                    
                    <br>
                    
                   
               
                                  
                </div><!--end personal info div-->
                    <br>
					
                    
     				 
                    
            
        </fieldset><!--end personal fieldset-->
        
                 
                 
        
        
        
        
             <br>    
          
            <div id="ShowYouMatches"><!--create account button-->
               
				<input type="submit" id="Login" value="Show Your Matches" style="float:left;">
            </div>     
           </fieldset>       
                 
        </form>
        
      
			
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