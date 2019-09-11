<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ include file = "includes/header.jsp" %>

<jsp:useBean id ="auth" class = "ua.itea.homework3.Auth" />

<c:set var="showForm" value="true"/>
<c:set var="login" value="${param['Login']}"/>
<c:set var="password" value="${param['Password']}"/>

<c:choose>

	<c:when test="${login == null && password == null}">
	</c:when>

	<c:when test="${auth.checkAccess(login,password) == 'true'}">
		<h1 style = 'color:green;'> Acess granted </h1>
	<c:set var = "showForm" value="false"/>
	</c:when>
	
	<c:otherwise>
		<h1 style = 'color:red;'> Acess denided </h1>
	</c:otherwise>
		
</c:choose>


<c:if test="${showForm == 'true'}">

<form id="loginForm" action="auth.jsp" method="post">

	<div class="field">
		<label>Enter your login:</label>
		<div class="input"><input type="text" name="Login" value="" id="Login" /></div>
	</div>

	<div class="field">
		<a href="#" id="forgot">Forgot your password?</a>
		<label>Enter your password:</label>
		<div class="input"><input type="password" name="Password" value="" id="Password" /></div>
	</div>

	<div class="submit">
		<button type="submit">Enter</button>
		<label id="remember"><input name="" type="checkbox" value="" /> Remember me</label>
	</div>

</form>

</c:if>	