<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

<title>login</title>

	<script src="js\jquery-1.9.1.js"></script>

<script type="text/javascript " src="js/jquery.validate.js"></script>
	

<script type="text/javascript">
	$(function() {
	

		$("#form").validate({
			reules:{
				email:{
					required:true
				},
				pwd:{
					required:true,
				
					
					
					
				}
			},
			messages:{
				
				email:{
					required:"Email is should not empty"
				},
				pwd:{
					
					required:"Password is should not empty"
				}
				
			}
		});
		alert("sueecssfully done..");
		

	});
</script>
<script type="text/javascript">
	$(function() {
		$("#reset").click(function() {
	
		confirm("Are you want to reset");
			$("input").each(function() {

				$("label.error").remove(),
				$("input.error").css("border","1px solid grey");
				
			});

		});
	});
</script>

<style type="text/css">
.panel-primary {
border-color: #337ab7;
width: 805px;
}
label.error {
	float: inherit;
	color: red;
	margin-left: 358px;
	margin-top: -30px;
	width: 100%;
}

input.error {
	border: 1px solid red;
}

em {
	color: red;
}

a{
font-family: cursive;
font-size: large;
font-style: italic;
color: aqua;

}
</style>



</head>
<body>
<%@ include file="header.jsp" %>
	<div class="container">
	<div class="row">
	<div class="col-md-2">
	
	</div>
	<div class="col-md-6">
						<br>											
		<div class="panel panel-primary">
			<div class="panel-heading">Login</div>
			
			<br>
			<div >
		<h4 style="color: red; text-align: center;"> <c:out value="${message }"></c:out></h4>
			</div>
			<form class="form-horizontal" role="form" action="users/login"
				method="post" id="form">
				<div class="form-group">
					<label class="control-label col-sm-3" for="email">Email:</label>
					<div class="col-sm-5">
						<input type="email" class="form-control" id="email" name="email"
							required="required" placeholder="Enter email" value="${user.getEmail() }">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="pwd">Password:</label>
					<div class="col-sm-5">
						<input type="password" class="form-control" id="pwd" name="pwd"
							required="required" placeholder="Enter password">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-6">
						<button type="submit" class="btn btn-success">Submit</button>

						<button type="reset" class="btn btn-danger" id="reset">Reset</button>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-9 col-sm-9">
					<a href="signup.jsp">New User</a>

						
					</div>
				</div>
				
				
				
			</form>
		</div>
		</div>
	</div>
	</div>
</body>
</html>