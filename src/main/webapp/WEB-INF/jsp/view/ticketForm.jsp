<%--
  Created by IntelliJ IDEA.
  User: 26barondeauroland
  Date: 5/9/24
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a ticket</title>
</head>
<body>
<h1>Create a ticket </h1>
<form method="POST" action="ticket" enctype="multipart/form-data">
    <input type="hidden" name="action" value="create">
    Title:<br>
    <input type="text" name="customerName"><br><br>
    Body:<br>
    <textarea name="body" rows="25" cols="100"></textarea><br><br>
    <b>Image</b><br>
    <input type="file" name="file1"><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>

