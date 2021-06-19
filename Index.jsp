<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import ="edu.fau.group2.ourproject.util.*"
	
	
    import ="java.io.*"
    import ="java.util.*"
    import ="java.util.ArrayList"

    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>Better Half | Login Page</title>

<link rel="stylesheet" type="text/css" href="MasterCSSBetterHalf.css" />

<style>
			
				#fieldset{
					
					width:300px;
						
				}
			
				#fieldset{
					
					width:300px;
					margin-left:250px;
					margin-bottom: 150px;
					margin-top:100px
						
				}
		
				
			</style>
</head>
<body>

		<div id="mainheader">
				
			<img src="OurLogo.jpg" alt="Our Logo" width=280; height=280> <img>
				
			
		</div>
			
							
			                     
			
			
			<div id="LoginF">
                    <h1 id="PTitle"><strong>Login Page</strong></h1>
                    
                    <form action="ValidateBetterHalf.jsp" method="post">
                        <label>Username: </label>
                        <input type="text" id="username" name="Username" placeholder="Enter your username..." required> <br>
                        <label>Password: </label>
                        <input type="password" id="password" name = "Password" placeholder="Enter your Password.." required><br>    
                        <input type="submit" value="Login" id="LoginB" >
					 </form>
					 <h2> Don't have an account? Sign up and meet other owls!</h2>
                        <a href="CreateAccount.jsp"><input type="submit" id="submitB" value="Sign Up" onclick="redirectforgotpassword()"> </a>
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