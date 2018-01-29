<!DOCTYPE HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">

<title>BOOK STORE | Home</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

<!--[if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">BOOK STORE</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-book">New Book</a></li>
					<li><a href="all-books">All Books</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode == 'MODE_HOME'}">
			<div class="container " id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to Book Store</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_BOOKS'}">
			<div class="container text-center " id="booksDiv">

				<h3>My Books</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-center">
						<thead>
							<tr>
								<th class="text-center">Id</th>
								<th class="text-center">Book Name</th>
								<th class="text-center">Author Name</th>
								<th class="text-center">Price(in $)</th>
								<th class="text-center">Rating</th>
								<th></th>
									<th></th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="book" items="${books}">
								<tr>
									<td>${book.id}</td>
									<td>${book.name}</td>
									<td>${book.author}</td>
									<td>${book.price}</td>
									<td>${book.rating}</td>
									<td><a href="update-book?id=${book.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-book?id=${book.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>

			</div>
		</c:when>
		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Book</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-book">
					<input type="hidden" name="id" value="${book.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${book.name}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Author</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="author"
								value="${book.author}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Price</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="price"
								value="${book.price}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Rating</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="rating"
								value="${book.rating}" />
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save">
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>

	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>

</html>












