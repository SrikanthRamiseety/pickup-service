<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

<title>package</title>
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="css/bootstrap-timepicker.min.css">
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript " src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js\jquery.timepicker.js"></script>



<script type="text/javascript">
	var pickerOpts = {
		minDate : new Date(),
		maxDate : "+30",
		beforeShowDay : function(date) {
			var day = date.getDay();
			return [ (day != 0), '' ];
		}
	};
	$(function() {
		$("#datepicker").datepicker(

		pickerOpts

		);
	});
	$(function() {
		$("#hide").hide();
	});
	$(function() {
		$("#view").click(function() {
			$("#hide").toggle(1500);
		});

	});

	/* $(function() {

		$("#time").timepicker({
			"minTime" : new Date(),
			"maxTime" : "6:30pm",
			"showDuration" : true

		});

	});
 */</script>
<script type="text/javascript">
	$(function() {
		$("#packageform").validate({
			reules : {
				weight : {
					required : true
				}
			},
			messages : {
				required : "You can't leave this empty. "
			}
		});
	});
</script>
<script type="text/javascript">
	$(function() {
		$("#reset").click(function() {

			confirm("Are you want to reset");
			$("input").each(function() {

				$("label.error").remove();

			});

		});
	});
</script>
<!-- <script type="text/javascript">
$(function(){
	$("#packagetype").change(function(){
		var value=$(this).val();
		alert(value);
		$.post("users/conform?packagetype="+value);
	});
	
	
	
});


</script>

 -->
<style type="text/css">
#view {
	margin-bottom: 15px;
	margin-left: 58px;
}

label.error {
	float: inherit;
	color: red;
}

input.error {
	border: 1px solid red;
}

em {
	
}
</style>
</head>
<body>
	<%@ include file="header2.jsp"%>
	<br>
	<br>
	
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<h3>
					Hi,
					<c:out value="${userlist.getFirstname()}"></c:out>
				</h3>
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
			</div>
			<div class="col-md-5">

				<div class="panel panel-primary" id="table">
					<div class="panel-heading">Package</div>
					<br> <br>

					<form class="form-horizontal" role="form" method="post"
						action="users/conform" id="packageform">
						<div class="form-group">
							<label class="control-label col-sm-3" for="package">Package
								Type</label>
							<div class="col-sm-7">
								<select id="packagetype" name="packagetype" required="required" >
								
									<option value="cover">Cover</option>
									<option value="box">Box</option>
									<option value="container">Container</option>
									<option value="other">Other</option>

								</select>


							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3" for="Date">Date</label>
							<div class="col-sm-7">
								<input class="datepicker" data-date-format="dd-mm-yyyy"
									id="datepicker" name="date" required="required"
									readonly="readonly" placeholder="Enter Date">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="time">Time:</label>
							<div class="col-sm-7">

								<select id="time" name="time">
									<option value="9:00 AM - 10:00 AM">9:00 AM - 10:00 AM</option>
									<option value="10:00 AM - 11:00 AM">10:00 AM - 11:00 AM</option>
									<option value="11:00 AM - 12:00 PM">11:00 AM - 12:00 PM</option>
									<option value="12:00 AM - 1:00 PM">12:00 AM - 1:00 PM</option>
									<option value="2:00 PM - 3:00 PM">2:00 PM - 3:00 PM</option>
									<option value="3:00 PM - 4:00 PM">3:00 PM - 4:00 PM</option>
									<option value="3:30 PM - 4:00 PM">5:00 PM - 6:00 PM</option>



								</select>
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-sm-3" for="Date">Weight:</label>
							<div class="col-sm-6">
								<input type="weight" class="form-control" id="weight"
									name="weight" required="required" placeholder="Enter Weight">
									 <select id="gm" name="gm">
									<option value="gm">gm</option>
									<option value="Kg">Kg</option>
									
									
									</select>


		

							</div>

						</div>



						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-7">
								<button type="submit" class="btn btn-success">Submit</button>

								<button type="reset" class="btn btn-danger" id="reset">Reset</button>
							</div>
						</div>
					</form>

				</div>
			</div>
			<div class="col-md-4" id="hide">
				<div class="panel panel-primary">
					<div class="panel-heading">Pickup Address</div>
					<br> <br>
					<form action="" class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-sm-3" for="city">City:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="city" name="city"
									required="required" placeholder="Enter city">
							</div>

						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="street">Street:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="street"
									name="street" required="required" placeholder="Enter street">
							</div>

						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="street">State:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="state" name="state"
									required="required" placeholder="Enter state">
							</div>

						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="street">pincode:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="pincode"
									name="pincode" required="required" placeholder="Enter pincode">
							</div>

						</div>
						<div class="form-group">
							<label class="control-label col-sm-3" for="street">mobile:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="mobile"
									name="mobile" required="required"
									placeholder="Enter mobile Number">
							</div>

						</div>

						<div class="form-group">
							<div class="col-sm-offset-4 col-sm-7">
								<button type="submit" class="btn btn-success">Submit</button>

								<button type="reset" class="btn btn-danger">Reset</button>
							</div>
						</div>





					</form>


				</div>
			</div>
		</div>

	</div>

</body>
</html>