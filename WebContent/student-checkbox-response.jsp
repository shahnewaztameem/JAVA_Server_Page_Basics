<html>
	<head>
		<title>Student DropdownConfirmation Title</title>
	</head>
	<body>
		The student is confirmed ${ param.firstName } ${param.lastName }
		<br><br>
		Student's favorite languages are
		<!-- disply list of "favoriteLanguage" -->
		<ul>
			<%
				String[] langs = request.getParameterValues("favoriteLanguage");
			
			for(String tempLang : langs) {
				out.println("<li>" + tempLang + "</li>");
			}
			%>
		</ul>
	
	</body>
</html>