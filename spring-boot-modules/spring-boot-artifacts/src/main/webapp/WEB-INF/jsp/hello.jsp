<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<%-- This file is slightly modified from:
	https://github.com/spring-projects/spring-boot/blob/v1.3.3.RELEASE/spring-boot-samples/spring-boot-sample-web-jsp/src/main/webapp/WEB-INF/jsp/welcome.jsp
--%>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>WebJars Demo</title>

	<script src="/webjars/jquery/3.1.1/jquery.min.js"></script>

	<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" />
	<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="/webjars/highlightjs/11.5.0/styles/default.min.css">
	<script src="/webjars/highlightjs/11.5.0/highlight.min.js"></script>

</head>

<body>

	<div class="container-fluid">
		<div class="page-header">
			<h1>Hello <small>hello.jsp</small></h1>
		</div>
	</div>

	<div class="container-fluid">

		<h2>Message: <small>${message}</small></h2>

		<figure>
		  <blockquote class="blockquote">
		    <p>
		  	This page is a simple hello world JSP template to demonstrate dynamic content, and...
		    </p>
		  </blockquote>
		  <figcaption class="blockquote-footer">
		    Caption Example: <cite title="Source Title">This page generated at ${time} </cite>
		  </figcaption>
		</figure>

		<br/>

		<figure>
		  <blockquote class="blockquote">
			<p>
		  	... it also demonstrates the difference between 
		  	the spring:url tag and the jstl url tag c:url.
		    <br/>You have to view page source to see the escaped difference.
		    </p>
		  </blockquote>
		</figure>

		<br/>

		<%-- https://stackoverflow.com/questions/5007210/how-to-use-springurl-with-an-a-tag#:~:text=The%20one%20important%20difference%20between,c%3Aout%20to%20escape%20it. --%>
		<c:url value="/resources/text.txt?a=1&b=2" var="url"/>
		<spring:url value="/resources/text.txt?a=1&b=2" htmlEscape="true" var="springUrl" />

		<p>Spring URL: ${springUrl}, as link: <a href="${springUrl}">click me</a></p>

		<p>JSTL URL: ${url}, as link: <a href="${url}">click me</a></p>

	</div>


</body>

</html>
