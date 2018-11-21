<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Hotels </title>
</head>
<body>
<form action="hotels/addhotels" modelAttribute="hotels">
Hotel Name:<input type="text" name="hname">
State:<input type="text" name="state">
City:<input type="text" name="city">
Price Per Night:<input type="number" name="price">
Rating:<input type="number" name="rating">
<input type="submit" value="fuck off">
</form>
</body>
</html>