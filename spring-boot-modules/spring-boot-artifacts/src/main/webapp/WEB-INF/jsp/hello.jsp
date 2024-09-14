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

	<script>
		// You can't use the following two lines or else you will get errors:
		// Uncaught SyntaxError: Unexpected identifier 'Brien' (at hello:26:27)
		// var namewithonebug = '${nameone}';
		// Uncaught SyntaxError: Unexpected identifier 'Quotes' (at hello:29:32)
		// var namewithtwobug = "${nametwo}";
		// This can be seen when viewing the rendered output:
		// var namewithtwobug = "Double"Quotes";
		// var namewithonebug = 'O'Brien';

		var nameonefixed = '<c:out value='${nameone}' />';
		var nametwofixed = "<c:out value="${nametwo}" />";
		var namethree = "${namethree}";
		var namethreefixed = "<c:out value="${namethree}" />";
		// When fixed, these render as:
		// var nameonefixed = 'O&#039;Brien';
		// var nametwofixed = "Double&#034;Quotes";

	</script>
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
		  	the <b>spring:url</b> tag and the <b>c:url</b> tag (JSTL).
		    <br/>You have to "view page source" to see the escaped difference.
		    </p>
		  </blockquote>
		</figure>

		<%-- https://stackoverflow.com/questions/5007210/how-to-use-springurl-with-an-a-tag --%>
		<c:url value="/resources/text.txt?a=1&b=2" var="curl"/>
		<spring:url value="/resources/text.txt?a=1&b=2" htmlEscape="true" var="surl" />

		<p>JSTL URL: ${curl}, as link: <a href="${curl}">click me</a></p>

		<p>Spring URL: ${surl}, as link: <a href="${surl}">click me</a></p>

		<br/>
		<figure>
			<blockquote class="blockquote">
			<p>
			... it also demonstrates the use of <b>c:out</b> tag to
			assign values to javascript variables when they contain
			such characters as single and double quotes.
			<br/>
			Use the browser console to view the following variables:
		</p>
			</blockquote>
		</figure>

		<p>
		Javascript var <b>nameonefixed</b>, with single quote(s): <c:out value='${nameone}' /><br/>
		Javascript var <b>nametwofixed</b>, with double quote(s): <c:out value="${nametwo}" /><br/>
		Javascript var <b>namefour</b>, double double quote(s): <c:out value="${namefour}" /><br/>
		Javascript var <b>namefour</b>, double double quote(s): ${namefour}<br/>
		<!-- Input field -->
		<input type="text" id="myInput" placeholder="Enter text"> 
		</p>
	</div>


</body>

</html>
