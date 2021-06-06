<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="all_js_css.jsp"%>
<title>Edit Page</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h2 class="text-uppercase">Edit your note</h2>
		<br>
		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" method="post">
		
		<input value="<%= note.getId() %>" name="noteId" type="hidden" />
			<div>
				<label for="exampleInputEmail1">Note Title</label> <input required
					name="title" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here"
					value="<%=note.getTitle()%>" />
			</div>
			
			<div class="form-group">
				<label for="exampleInputPassword1">Note Content</label>
				<textarea name="content" required rows="8" id="content"
					placeholder="Enter Your Content Here" class="form-control"><%= note.getContent()%></textarea>
			</div>
			
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Your Note</button>
			</div>
			
		</form>
	</div>
</body>
</html>