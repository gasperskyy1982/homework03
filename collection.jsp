<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="collection" class = "ua.itea.homework5.Map"/>

<c:forEach var="s" items="${collection.map.toArray}">
I: ${s} <br/>
</c:forEach>