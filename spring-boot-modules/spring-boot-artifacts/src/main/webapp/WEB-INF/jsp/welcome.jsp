<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<%-- This file is slightly modified from:
	https://github.com/spring-projects/spring-boot/blob/v1.3.3.RELEASE/spring-boot-samples/spring-boot-sample-web-jsp/src/main/webapp/WEB-INF/jsp/welcome.jsp
--%>
<html lang="en">

<head>
	<title>WebJars Demo</title>

	<script src="/webjars/jquery/3.1.1/jquery.min.js"></script>

	<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" />
	<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="/webjars/highlightjs/11.5.0/styles/default.min.css">
	<script src="/webjars/highlightjs/11.5.0/highlight.min.js"></script>

</head>

<body>

	<h1>welcome.jsp</h1>
	<h2>Message: ${message}</h2>

<figure>
  <blockquote class="blockquote">
    <p>
  	This page demonstrates the difference between the spring:url tag
	and the jstl url tag c:url.
    </p>
  </blockquote>
  <figcaption class="blockquote-footer">
    Someone famous in <cite title="Source Title">Source Title</cite>
  </figcaption>
</figure>

	<p class="lead">
	This page demonstrates the difference between the spring:url tag
	and the jstl url tag c:url.
	</p>

	<%-- https://stackoverflow.com/questions/5007210/how-to-use-springurl-with-an-a-tag#:~:text=The%20one%20important%20difference%20between,c%3Aout%20to%20escape%20it. --%>
	<c:url value="/resources/text.txt?a=1&b=2" var="url"/>
	<spring:url value="/resources/text.txt?a=1&b=2" htmlEscape="true" var="springUrl" />
	Spring URL: ${springUrl} at ${time} <br>
	as link: <a href="${springUrl}">click me</a> <br>
	<br>
	JSTL URL: ${url} <br>
	as link: <a href="${url}">click me</a> <br>

</body>

</html>
