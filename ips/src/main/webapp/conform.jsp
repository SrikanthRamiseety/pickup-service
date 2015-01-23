<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>conform</title>
 





</head>
<body>
	<%@ include file="header2.jsp"%>
	<br><br>
	<div class="container">
		<div class="row">
						<div class="col-md-9">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4>Package Details</h4>
					</div>
					<table class="table">
						<tr>
							<th>Package</th>
							<th>Time</th>
							<th>Date</th>
							<th>weight</th>
							<th>Amount</th>
							<th>service tax</th>
							<th>Total Amount</th>

						</tr>


						<tr>
							<td><c:out value="${pickup.getPackagetype() }"></c:out></td>

							<td><c:out value="${pickup.getTime() }"></c:out></td>
							<td><c:out value="${pickup.getDate() }"></c:out></td>
							<td> <c:out value="${pickup.getWeight()}"></c:out>
							</td>
							<td>
								
								<c:out value="${pickup.getAmount() }"></c:out>
							</td>
							<td>

								<c:out value="${pickup.getTax() }"></c:out>
							</td>
							<td>
							
								<c:out value="${pickup.getTotalamount() }"></c:out>
							</td>
							</tr>
					</table>
				</div>
				
				<h3 style="color: green">Package Details are successfully done... </h3>
				<h3 style="color: green">Our Person is come and Pick The your ${pickup.getPackagetype() }....</h3>
				<h1 style="color: green;">Thanks for visiting our site ...</h1><a href="homepage.jsp">Logout</a>
			</div>
			<div class="col-md-3">
				
				<div class="panel panel-primary">
					<div class="panel panel-heading">Your Address is</div>
					<address style="text-align: center;">

						City:
						<c:out value="${userlist.getAddress().getCity() }"></c:out>
						<br> Street:
						<c:out value="${userlist.getAddress().getStreet() }"></c:out>
						<br> State:
						<c:out value="${userlist.getAddress().getState() }"></c:out>
						<br> Pincode:
						<c:out value="${userlist.getAddress().getPincode() }"></c:out>
						<br> Mobile:
						<c:out value="${userlist.getAddress().getMobile() }"></c:out>

					</address>
					<!-- <button class="btn btn-success" id="view">Add new Address</button> -->
				</div>
					<a href="index.html">Home</a>
			

			</div>
			

		</div>

	</div>

</body>
</html>