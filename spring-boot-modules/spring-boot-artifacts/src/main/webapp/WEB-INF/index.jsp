<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<html>
<head>
	<title>WebJars Demo</title>

	<!-- our project just needs Font Awesome Solid + Brands -->
	<link href="/webjars/font-awesome/6.4.2/css/fontawesome.css" rel="stylesheet">
	<link href="/webjars/font-awesome/6.4.2/css/brands.css" rel="stylesheet">
	<link href="/webjars/font-awesome/6.4.2/css/solid.css" rel="stylesheet">

	<script src="/webjars/jquery/3.1.1/jquery.min.js"></script>

	<link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

	<!-- default, agate(i.e.blackboard), obsidian -->
	<link href="/webjars/highlightjs/11.5.0/styles/obsidian.min.css" rel="stylesheet">
	<script src="/webjars/highlightjs/11.5.0/highlight.min.js"></script>

	<style>
		pre { background: #282b2e; }

		/* Override highlight style(s) */
		pre code.hljs { padding: 0px; }

		/* Simulate FA5+ styles */
		.ms-3 { margin-left: 3px;}
	</style>
</head>
<body>
	<div class="container">
		<br/>
		<div class="alert alert-success">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">x</a>
			<strong>Success!</strong> index.jsp is working as expected.
		</div>
	</div>

	<div class="container my-5">

		<div class="bg-body-tertiary p-5 rounded">
			<div class="col-sm-8 py-5 mx-auto">
				<h1 class="display-5 fw-normal">Welcome</h1>

				<p class="fs-5">
					This small app demonstrates the use of 
					<a href="https://getbootstrap.com/" target="_blank">Bootstrap<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
					and <a href="https://jquery.com/" target="_blank">jQuery<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
					via <a href="https://www.webjars.org/" target="_blank">WebJars<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
					in a <a href="https://spring.io/projects/spring-boot">Spring Boot<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>  
					application.
				</p>
				<p class="fs-5">
					Further enhancements include:
				</p>
				<ul>
					<li><a href="https://highlightjs.org/" target="_blank">highlight.js<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
					<li><a href="https://fontawesome.com/" target="_blank">FontAwesome<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
					<li>Ability to use both 
						${JSP}<a href="https://docs.oracle.com/javaee/5/tutorial/doc/bnagy.html">JSP<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a> 
						and ${Thymeleaf}<a href="https://www.thymeleaf.org/doc/tutorials/3.0/thymeleafspring.html#views-and-view-resolvers-in-spring-mvc">Thymeleaf<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
						templates using: 
						<pre><code id="codeConfig"></code></pre>
						Note: If <code>view-names</code> is not set (i.e. null), <code>ThymeleafViewResolver</code> will not pass
						views to <code>InternalResourceViewResolver</code>.
					</li>
					<li>Reload Thymeleaf templates using: <pre><code>spring.thymeleaf.cache=false</code></pre>
					</li>
					<li>Reload JSPs using: <pre><code>server.servlet.jsp.init-parameters.development=true</code></pre>
					</li>
					<li>Submit rich JSON data model to AJAX Controllers using: 
						<pre><code id="codeController"></code></pre>
					</li>
					<li>Demonstrate the difference between the Spring <code>spring:url</code> tag
						and the JSTL <code>c:url</code> tag: 
						<pre><code id="codeTags"></code></pre>
					</li>
				</ul>

	<!--  
				<a class="btn btn-primary" href="#" role="button">
				Click Me</a>
	-->

			</div>
		</div>
	</div>

<script>
const CODE = {

controller: 
`@ResponseBody @PostMapping(value = "ajaxform")
public Object method(@RequestBody Form form)`,

ctag:
`c:url value="/resources/text.txt?a=1&b=2" var="url"/`,

stag:
`spring:url value="/resources/text.txt?a=1&b=2" htmlEscape="true" var="springUrl" /`,

config: `spring.mvc.view.view-names=index,jsp/*

spring.thymeleaf.view-names=thymeleaf/*
spring.thymeleaf.template-resolver-order=1 `,

brackets: function(x) {
	return '<' + x + '>'
}
};

$('#codeTags').text(CODE.brackets(CODE.ctag) + '\n' + CODE.brackets(CODE.stag));
$('#codeConfig').text(CODE.config);
$('#codeController').text(CODE.controller);

hljs.highlightAll();
</script>

</body>
</html>
