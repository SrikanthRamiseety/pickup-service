<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>time</title>
<link rel="stylesheet"
	href="css/jquery-ui.css">
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="css/bootstrap-timepicker.min.css">
<script
	src="js/bootstrap.min.js"></script>
<script type="text/javascript "
	src="js/jquery.validate.js"></script>
	<script type="text/javascript" src="js\jquery.timepicker.js"></script>
<script type="text/javascript">

$(function(){
	
	$("#time").timepicker({
	"minTime":new Date(),
    "maxTime": "6:30pm",
    "showDuration": true
		
	});

	 


	
});


</script>
</head>
<body>
<div class="form-group">
							<label class="control-label col-sm-3" for="time">Time:</label>
							<div class="col-sm-7">

								<input type="text" id="time" name="time" required="required"  readonly="readonly" />
							</div>
						</div>


</body>
</html>