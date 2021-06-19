<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "edu.fau.group2.ourproject.util.*"
    import = "edu.fau.group2.ourproject.model.*"
    import = "java.util.List"
    import = "java.time.LocalDate"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Search by Date Joined</title>
	<link rel="stylesheet" type="text/css" href="MasterCSSBetterHalf.css" />
</head>
<body>

	<%
		String datejoined = request.getParameter("membersince");
		LocalDate date = LocalDate.parse(datejoined);
		List <UserAccount> list = DBUtil.getUserGreaterThanDateJoined(date);
		for(int index = 0; index < list.size(); index++)
			out.print("<p>" + list.get(index).getName() + " " + list.get(index).getDateJoined());
	%>



</body>
</html>