<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="collection" class = "ua.itea.homework3.Collection"/>

<table align = 'center' border = '1'>
<c:forEach items="${collection.getCollection()}" var="entry">
    <tr>
	<td>${entry.getKey()} </td>
	<td>${entry.getValue()} </td>
	<br>
	</tr>
</c:forEach>
</table>