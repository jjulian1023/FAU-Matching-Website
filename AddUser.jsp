<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 
	import="edu.fau.group2.ourproject.model.*"
	import="edu.fau.group2.ourproject.util.*" 
	import="java.util.List"
	import="java.sql.*"
	import ="java.time.LocalDate"
	
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Adding User</title>
<link rel="stylesheet" type="text/css" href="MasterCSSBetterHalf.css" />
</head>

		<style>  
			a{
           			text-decoration: none;
            		color:black;
        	}
        	
        	h2{
	        		text-align: center;
		            content-align:center;
		            font-size: 18px;
		            color: #AF0000;;
	        
        		}

		</style>
<body>
	
	
	
	
	
		<div id="mainheader">
				
			<img src="OurLogo.jpg" alt="Our Logo" width=280; height=280> <img>
				
			<a href="Index.jsp">
				<input type="submit" id="Login" value="Login" style="float:right;"   >
			</a>
			
		</div>

	<%
		
		String name = request.getParameter("name");
		String Lastname = request.getParameter("Lastname");
		String gender = request.getParameter("Gender");
		String email = request.getParameter("email");
		String education = request.getParameter("education");
		String professionalInterests = request.getParameter("ProfessionalInterests");
		String personalInterests = request.getParameter("PersonalInterests");
		String Username = request.getParameter("Username");
		String Password = request.getParameter("Password");
		String dateJoined = request.getParameter("datejoined");// "2019-11-06"
		LocalDate date = LocalDate.parse(dateJoined);
	
		UserAccount t = new UserAccount (name, Lastname, gender, email, education, professionalInterests, personalInterests, Username, Password, date);
		
		boolean didSave = DBUtil.createUserAccount(t);
		
		if (didSave){
			out.print("<h2>User created!</h2>");
			out.print("<h2>User name: "+ t.getUsername()+ "</h2>");
			out.print("<h2>Password: "+ t.getPassword()+ "</h2>");
		}
		else if (didSave==false){
			out.print("<h2>Id " + t.getUserId()+ " already exist! "+ "</h2>");
		}
		else {
			out.print("<h2>Error creating employee, contact helpdesk</h2>");
		}
	%>
	
	
	
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