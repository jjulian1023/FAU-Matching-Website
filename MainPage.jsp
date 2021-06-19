<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="edu.fau.group2.ourproject.model.*"
    import = "edu.fau.group2.ourproject.configuration.*"
    import ="edu.fau.group2.ourproject.util.*"
	import ="edu.fau.group2.ourproject.util.DBUtil"
    import ="java.io.*"
    import ="java.util.*"
    import ="java.util.ArrayList"
    
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Main Page</title>


<link rel="stylesheet" type="text/css" href="MasterCSSBetterHalf.css" />

<style>
		
		
		#MyAccount{
			
			text-align: right;
			margin-top: 50px;
            background-color: #FF914D;
            color:floralwhite ;
            padding: 20px 30px; 
            font-size: 20px;
            border-color: #AF0000;
            font-style: oblique;
			
	    }	
        #ButtonsMain{
            
            text-align: center;
            
        }
		#BrowseAll{
			
			text-align: center;
            margin: 0 auto;
            background-color: #FF914D;
            color:floralwhite ;
            padding: 20px 30px; 
            font-size: 24px;
            border-color: #AF0000;
            font-style:normal;
            height: 80px;
            width: 340px;
	    }	
		
        #SPTitle{
            text-align: center;
            font-size: 18px;
            color: #AF0000;
            
        }
        
        #bottom{
            border-top-style:solid;
			border-color: #AF0000;
            
        }
		
		#bottomright{
			width: 33%;
            float:left;
		}
		
		
		#bottomcenter{
			width: 33%;
            float:left;
		}
		
		#bottomright{
			width: 33%;
            float:left;
		}
		
		#PictureB{
				background-image:url("OW1.jpg");
		}
	</style>

	
		<body style="font-family: Verdana;" >
</head>

<body>
		
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
				
			<img src="OurLogo.jpg" alt="Our Logo" width=280; height=280> <img>
				
			<a href="UserProfile.jsp">
            <img src="UserPhoto2.jpg" id= "UserPhoto" alt="userlogo default"width=50; height=50 style="float: right;" >
            </a>
			
		</div>
		
	<div id = "PictureB"> 	
        <div id=ButtonsMain>
            <h1 id="SPTitle"><em>
                Begin your Better Half experience...</em>
            </h1>	

            
                <br>
                <br> 
				<a href="BrowseThroughAllMember.jsp">
                <input type="submit" id="BrowseAll" value="Browse Through All" >
				</a>
                <br>
                <br>
                <br>
				<a href="ChooseCriteria.jsp">
                <input type="submit" id="BrowseAll" value="Choose Criteria" style="float:center;" >
				</a>
                <br>
                <br>
                <br>
				<a href="MagicMatchesPage.jsp">
                <input type="submit" id="BrowseAll" value="Leave the Magic Up to Us" style="float:center;" >
				</a>	
                <br>
                <br>
                <br>
                <br>
         </div>
         		<form action="Logout.jsp" method="post">
                        
                            
                        <input type="submit" id = "CreateAccountB"value="Logout" >
                 </form>
  
         
                 
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