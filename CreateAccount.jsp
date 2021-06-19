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
<title>Create Account</title>

<link rel="stylesheet" type="text/css" href="MasterCSSBetterHalf.css" />

<style type="text/css">

#slogan{
			
					text-align: center;
					font-style: italic;
					font-family: cursive;
					font-size: 60px;
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


input[type="text"],textArea,#Password, select{
			background-color:white;
			width:350px;
			float:right;
			border-color:#AF0000;
		
			

		}
		
.heighttext, #selectGender{
  			height:20px
		}


		select {
   				height: calc(1em + .75rem + 2px);
   				padding: .100rem 1.rem .300rem .75rem;
   				font-size: .8rem;
 
}

#datejoined {
				float:right;
}

		
		
		
 </style>
 

</head>

<body style="font-family: Verdana;"><!--Body Start -->
		<%
		
		List<Education> eduList = DBUtil.getAllEducation();
		List<PersInterests> PersList = DBUtil.getAllPersInterests();
		List<ProfInterests> ProfList = DBUtil.getAllProfInterests();
		
		%>

  
  
     
       
        <div id="mainheader">
            <img src="OurLogo.jpg" alt="Our Logo" width=280; height=280><img>
        </div>    
				
        
       
            
    <form action="AddUser.jsp" method="post">
            
        <fieldset id = "modify">  
                <legend><strong>Create Your Account/Profile: </strong></legend>
                <br>
                <br>
              
                   
                
				<div> <!--personal information div-->
				
				
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
                        <select  name="Gender" id ="textArea" >
                        	<option  value=M>M</option>
                        	<option value=F>F</option>
                        </select>
                        
                    </div><br>
                    
                    
                     
                    
                    <div>
                        <label for="email">Email:</label>
                        <input class="heighttext" type="text"  pattern=".+@fau.edu" id="email"name = "email" size="50" placeholder="Enter your email" maxlength="50" required/>    
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
                </div><!--end personal info div-->
       
       
            
                <div>
                    <label for="Username">Username:</label>
				    <input class="heighttext" type="text"id="Username" name = "Username" placeholder="Enter your Username" maxlength="50" required>
                </div><br>
       
        
        
            
                <div>
                    <label for="Password">Password:</label>
				    <input class="heighttext" type="password"  id="Password" name = "Password" placeholder="Enter your Password" maxlength="50" required>
                </div><br>
        
        
				<div>
        			<label for = "Date" >Today's Date</label>
        			<input class= "heighttext"  type="date" id="datejoined" name= "datejoined" required/>
        		       		
        		</div>
				
        		
        
          </fieldset>       
        
                 
         
            <div id="createaccountbutton"><!--create account button-->
               
				<input type="submit" id="CreateAccountB" value="Create an Account">
            </div>     
                
                 
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