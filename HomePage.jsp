<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="edu.fau.group2.ourproject.util.*"
	import ="edu.fau.group2.ourproject.util.DBUtil"
	import ="edu.fau.group2.ourproject.model.*"
    import ="java.io.*"
    import ="java.util.*"
    import ="java.util.ArrayList"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Better Half | Home Page</title>

<link rel="stylesheet" type="text/css" href="MasterCSSBetterHalf.css" />

<style type="text/css">

			#slogan{
			
					text-align: center;
					font-style: italic;
					font-family: cursive;
					font-size: 60px;
			}		

 </style>
 
</head>
<body>
		<div id="mainheader">
				
			<img src="OurLogo.jpg" alt="Our Logo" width=280; height=280> <img>
				
			<a href="Index.jsp">
				<input type="submit" id="Login" value="Login" style="float:right;">
			</a>
			</div>
				
	<%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
            out.println("Welcome to Better Half!");
            hitsCount = 1;
         } else {
            /* return visit */
            out.println("Welcome back to our website!");
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
    %>
      <center>
         <p>Total number of visits: <%= hitsCount%></p>
      </center>

				
				
			<div>
				 <img src="OwlRight.jpg" alt="Our Logo" width=100% text-align=center> <img>
                 <a href="CreateAccount.jsp" content-align=center><input type="submit" id="CreateAccountB" value="Create an Account"r></a>
            
            </div>
			
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