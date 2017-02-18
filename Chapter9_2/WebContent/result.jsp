<%-- we use page directive taglib , we set name on prefix to be use as this id
and we telling uri as we use jstl core  --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result page</title>
</head>
<body>
	<!--This value is output if the value attribute evaluates to null:-->
	<b>Hello <c:out value="${user}">guest</c:out></b>
	<hr>
	<!-- same here , just another way to do: -->
	<b>Hello <c:out value="${user}" default="NO NAME" />.
	</b>
	
	<table>
			<!--Outer loop:-->
			<%-- first in attribute items is collection or array, then we get from that collection
			or array a single item we call attribute var and we name it to use later --%>
				<c:forEach var="arrayOfMovies"  items="${movieArraysOfArrays}" >
					<!-- Inner loop one of the String arrays that was assigned 
					to the outer loop's "var" attribute, because still in items attribute is array element
					so we use same thing to get single element from it: -->
					<c:forEach var="single_element" items="${arrayOfMovies}" >
						<tr>
							<td>${single_element}</td>
						</tr>
					</c:forEach>
				</c:forEach>
			
			</table>
</body>
</html>