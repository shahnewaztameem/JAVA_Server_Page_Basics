<%@ page import="java.util.*" %>
<html>
	<body>
		<!-- create a html form -->
		<form action="todo-list.jsp" method="post"> 
			Add a new item: <input type="text" name="item">
			<input type="submit" value="Add a new item"> 
		</form>
		<br>
		<!-- add a new item to the todo list -->
		<%
			List<String> items = (List<String>) session.getAttribute("todos");
			
			if(items == null) {
				items = new ArrayList<String>();
				session.setAttribute("todos", items);
			}
			String theItem = request.getParameter("item");
			if(theItem != null) {
				items.add(theItem);
			}
		%>
		<hr>
		<!-- display all todo item from session -->
		<b>Todo list items</b> <br>
		<ol>
			<%
				for(String temp: items) {
					out.println("<li>"+temp+"</li>");
				}
			
			%>
		
		</ol>
	
	</body>
</html>