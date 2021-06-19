<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="edu.fau.group2.ourproject.model.*"
    import ="edu.fau.group2.ourproject.util.*"
	import ="edu.fau.group2.ourproject.util.DBUtil"
    import ="java.io.*"
    import ="java.util.*"
    import ="java.util.ArrayList"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

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

 	<head>
	
        <title>Better Half | Browse Through All Members</title>
        <link rel="stylesheet" href="MasterCSSBetterHalf.css" type="text/css">
        
	
	</head>
	
	<style>
		
		body{  
          background-color:#FFF1EB;	
          text-align: left;
          font-size: 15px;
		}
		
		
		
		
        #downloadtitle {
            text-align: center;
            font-size: 25px;
            color: #AF0000;
            width: 100%;
            
        }
        
        
        #download {
                display: table-cell;
                height: 100%;
                width: 25%;
                text-align: center;
                vertical-align: middle;
        }

            
        }
        #newmatchesfield{
            margin:auto;
            width:550;
            height:auto;
        }
        
        #tentativefield{
            margin: auto;
            width:550;
            height:350;
            clear: left;
            border: none;
        
        }
        #tentativeheading{
            text-align: center;
        }
        #innerfield3field{
            text-align: center;
            width: auto;
            height: 100;
        }
		#login{
		
							margin-left:100px;
							margin-top: 0;
							margin-bottom:0;
							
		}
        
	
	</style>

	
    <body style="font-family: Verdana;" >
			
		<div id="mainheader">
			<img src="OurLogo.jpg" alt="Our Logo" width=280; height=280> <img>
				
            <a href="UserProfile.jsp">
                <img src="UserPhoto2.jpg" id="UserPhoto" alt="userlogo default"width=50; height=50 style="float: right;" >  
            </a>

		</div>
       
        <h3 id="messagesheading">Here you can browse through all members.</h3>
        
      
 <h1>All Better Halves</h1>
	<table>
		<thead>

		
				<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gender</th>
				<th>Personal Interests</th>
				<th>Professional Interests</th>
				<th>Education</th>
				<th>Picture</th>
				</tr>
		</thead>
		<%
		DBUtil util = new DBUtil();
	
		List<UserAccount> usa = new ArrayList<UserAccount>();
		usa = DBUtil.getAllUserAccount();

		for (int index=0; index < usa.size(); index++){ 
				out.print("<tr>"); 
			out.print("<td>" + usa.get(index).getName() + "</td>"); 
			out.print("<td>" + usa.get(index).getLastName() +"</td>");
			out.print("<td>" + usa.get(index).getGender()+ "</td>");
			out.print("<td>" + usa.get(index).getPersonalInterests()+"</td>");
			out.print("<td>" + usa.get(index).getProfessionalInterests()+"</td>");
			out.print("<td>" + usa.get(index).getEducation()+"</td>");
			
			if(usa.get(index).getGender().equalsIgnoreCase("M") )
			out.print("<td><img src=Pictures/M.jpg><td>");  
			else
				out.print("<td><img src=Pictures/F.jpg><td>");
				
			
				out.print("</tr>"); 
		}
				%>	
	</table>
        
        	<div> 
					<a href="MainPage.jsp">
					<input type="submit" id="Login" value="Go Back" style="float:left;"> </a>
		
			</div>
            
      <br>
      <br>
      <br>
      <br>
      <br>      
      <fieldset id ="tentativefield"> 
        	<iframe src="https://minnit.chat/BetterHalf?embed&&nickname=" style="border:none;width:90%;height:300px;" allowTransparency="true"></iframe><br>
        	<h3>Click above to start chatting!</h3> 
    </fieldset>
                      
        <div id="BottomBottom">
				<a href="HomePage.jsp">Home Page</a> |
				<a href="MainPage.jsp">Member Home Page</a> |
				<a href="CreateAccount.jsp">Create Profile</a>	|
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

