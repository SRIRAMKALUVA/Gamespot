<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title> project </title>
<script src = "javascriptfunctions.js"></script>
</head>
<body style="background-color: black">
<hr>

	
	<br><br><br><br><br><br><br><br><br><br><br>
	<div  class = "container-fluid" align="center">
<br><br>
  <div>

  <div class="form-group col-md-4">
  <form  action = "runQuery.php" method="post" target = "_blank">
  <br><br>
  <div id = AdHocSection class = "section">
	<h2 id = "AdHocTitle" class = "title" style="color: white"> Enter your Query </h2>
	<form action = "runQuery.php" method="post" target = "_blank">
		<strong>Please enter your query below: </strong> <br/> 
    <textarea name="queryBox" rows="1" cols="100" id = "queryBox"></textarea><br/><br>
		<button class = "textBoxButton" type = "button" onClick="clearTextArea();">Remove</button>
		<input class="btn btn-outline-success" type="submit" value="Retrieve">
    </form>
  </div>
  </div>
</div>
	<hr>
	</body>
</html>
