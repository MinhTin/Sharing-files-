<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Mini File Sharing</title>
<!-- Google icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- icon for Web -->
<link rel="icon" href="resources/image/icon.png">
<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">
<!-- bootstrap 4 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- customize bootstrap -->
<link href="<c:url value="resources/css/layout-header-footer.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout-header-footer.css" />"
	rel="stylesheet">
</head>
<body>
	<!-- header -->

	<%@ include file="header.jsp"%>

	<!-- add file button -->



	<!-- <div class="upload-btn-wrapper">
  			<button class="btn">Upload a file</button>
  		<input type="file" name="myfile" />
	</div>  -->



	<!-- content -->
	<div class="container-fluid margin-top-60">
		<!-- search nav -->
	
		
		<div class="container-fluid">
			<div class="row">
				<!-- category -->
				<div class="col-md-2 col-sm-4 category">
					<h6 class="title">category</h6>
					<ul class="nav nav-pills flex-column">
					
					<c:forEach var="cate" items="${category }">
								<li class="nav-item">
								<a class="nav-link active" href= '<c:url value="/home/${idUser}/${cate.getIdCategory()}"/>'> ${cate.getNameCategory()}
								</a>
								</li>
					</c:forEach>
						
					</ul>
				</div>
				

				<!-- file list -->
					
						
				<div class="col-md-10 col-sm-8 file-list">
					<form  action="" method="post" enctype="multipart/form-data">
						<input class="btn_upload_file" type="file" name="upload_file_form" size="25">
		 				<input class="btn_upload" type="submit" value="Upload" />
					</form>
								<h6 class="title">file list</h6>
								<div class="card-deck" >
						<c:forEach var="file" items="${listFiles}">
						 	 <a class="detail_file" href= '<c:url value="/home/${idUser}/detail-${file.getIdFile()}"/>'>
								 <div class="card">
								 <img class="card-img-top file">						    
								 <div class="card-body">
								  <h5 class="card-title">${file.getNameFile()}</h5>
								  <p class="card-text"><small class="text-muted">${file.getSizeFile()} Bytes</small></p>
								   <p class="card-text"><small class="text-muted">${file.getIdUser().getNameUser()}</small></p>	
								   <p class="card-text"><small class="text-muted">${file.getCommentFile()}</small></p>	
								   <p class="card-text"><small class="text-muted">${file.getDateCreateFile()}</small></p>	
								</div>
								</div>
							</a>
						</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<span>${messageFile }</span>


	
	
	<!-- footer -->
	<%@ include file="footer.jsp"%>

	<!-- bootstrap css, jQuery 4 -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<!-- angular 1.6.4 -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</body>
</html>