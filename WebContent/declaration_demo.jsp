<html>
	<title>Declaration</title>
	<body>
		<%!
			String makeItLower(String data) {
			return data.toLowerCase();
		}
		
		%>
		HELLOW WORLD in lower case: <strong> <%= makeItLower("HELLOW WORLD") %> </strong>
	</body>
</html>