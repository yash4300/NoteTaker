<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>

</head>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>

		<h2 class="text-uppercase">Please Fill Your Note Details</h2>

		<!-- This is add form -->

		<form action="SaveNoteServlet" method="post">
			<div>
				<label for="exampleInputEmail1">Note Title</label> <input required
					name = "title" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Note Content</label>
				<textarea name="content" required rows="8" id="content"
					placeholder="Enter Your Content Here" class="form-control"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>

		<!-- End of add form -->

	</div>

</body>
</html>