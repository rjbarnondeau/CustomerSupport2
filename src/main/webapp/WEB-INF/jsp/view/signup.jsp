<html>
<head>
  <title>Customer Support Signup</title>
</head>
<body>
<h2>Signup</h2>
You must create an account or log in to access the Customer Support website.<br><br>
<c:if test="${signupFailed == true}">
  <b><c:out value="You cannot use those for username or password"></c:out></b><br>
</c:if>
<form method="POST" action="<c:url value='/signup'/>">
  Username: <input type="text" name="username"><br><br>
  Password: <input type="password" name="password"><br><br>
  <input type="submit" value="Sign Up">
</form>
</body>
</html>
