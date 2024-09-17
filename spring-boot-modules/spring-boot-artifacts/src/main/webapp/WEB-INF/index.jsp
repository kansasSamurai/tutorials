<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>WebJars Demo</title>

    <!-- our project just needs Font Awesome Solid + Brands -->
    <link href="/webjars/font-awesome/6.4.2/css/fontawesome.css" rel="stylesheet">
    <link href="/webjars/font-awesome/6.4.2/css/brands.css" rel="stylesheet">
    <link href="/webjars/font-awesome/6.4.2/css/solid.css" rel="stylesheet">
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- highlightjs default, agate(i.e.blackboard), obsidian -->
	<link href="/webjars/highlightjs/11.5.0/styles/obsidian.min.css" rel="stylesheet">

	<!-- highlightjs-copy -->
	<link href="https://unpkg.com/highlightjs-copy/dist/highlightjs-copy.min.css" rel="stylesheet" />

	<style>
		pre { background: #282b2e; }

		/* Override highlight style(s) */
        pre code.hljs { padding: 0px; }

        /* The default for this is too dark so match hljs-tag color */
        pre code.hljs span.hljs-meta { color: #8cbbad; }

		/* Simulate FA5+ styles */
		.ms-3 { margin-left: 3px;}
	</style>
</head>
<body>

	<div class="container-fluid">

		<div class="page-header">
			<h1>Welcome <small>index.jsp</small></h1>
		</div>

		<div class="alert alert-success">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">x</a>
			<strong>Success!</strong> index.jsp is working as expected.
		</div>

		<div class="row"><!--  class="bg-body-tertiary rounded" -->

			<div class="col-md-9">
				<p>
					This small ${SpringBoot} <a href="https://spring.io/projects/spring-boot" target="_blank">Spring Boot<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
					application demonstrates the 
					use of ${Bootstrap}<a href="https://getbootstrap.com/" target="_blank">Bootstrap<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
					and ${jQuery}<a href="https://jquery.com/" target="_blank">jQuery<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
					via ${WebJars}<a href="https://www.webjars.org/" target="_blank">WebJars<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
					.
				</p>
				<span>
					Further enhancements include:
				</span>
				<ul>
					<li><a href="https://highlightjs.org/" target="_blank">highlight.js<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
					<li><a href="https://github.com/arronhunt/highlightjs-copy/" target="_blank">highlightjs-copy<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
					<li><a href="https://fontawesome.com/" target="_blank">FontAwesome<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
					<li>Ability to use both <span class="JSP">JSP</span>
						and <span class="Thymeleaf">Thymeleaf</span> templates using**:
						<pre><code id="codeConfig">code-goes-here</code></pre>
                            ** Important: If <code>thymeleaf.view-names</code> is not set (i.e. null), <code>ThymeleafViewResolver</code> will not pass
                            views to JSP <code>InternalResourceViewResolver</code>.
                            <br/>
                            <br/>
					</li>
					<li>Reload Thymeleaf templates using: 
						<pre><code>spring.thymeleaf.cache=false</code></pre>
					</li>
					<li>Reload JSPs using: 
						<pre><code>server.servlet.jsp.init-parameters.development=true</code></pre>
					</li>
					<li>Submit rich JSON data model via jQuery/AJAX to Controllers using: 
						<pre><code id="codeController" class="language-java"></code></pre>
					</li>
					<li>Demonstrate the difference between 
						the ${Spring}<a href="https://docs.spring.io/spring-framework/docs/4.2.x/spring-framework-reference/html/spring-tld.html" target="_blank">Spring</a> <code>spring:url</code> tag
						and the ${JSTL}<a href="https://docs.oracle.com/javaee/5/tutorial/doc/bnake.html" target="_blank">JSTL</a> <code>c:url</code> tag: 
						<pre><code id="codeTags" class="language-html"></code></pre>
					</li>
				</ul>

	<!--  
				<a class="btn btn-primary" href="#" role="button">
				Click Me</a>
	-->
			</div>
			<div class="col-md-3">
				<p>Site Contents</p>

				<h4>JSP</h4>
				<ul>
					<li><a href='<spring:url value="/hello" htmlEscape="true" />' target="_blank">hello<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
				</ul>

				<h4>Thymeleaf</h4>
				<ul>
					<li><a href='<spring:url value="/menu" htmlEscape="true" />' target="_blank">menu<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
					<li><a href='<spring:url value="/index" htmlEscape="true" />' target="_blank">index<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
					<li><a href='<spring:url value="/jquery" htmlEscape="true" />' target="_blank">jquery<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
				</ul>

				<h4>To Do</h4>
				<ul>
					<li><a href="https://github.com/arronhunt/highlightjs-copy/" target="_blank">highlightjs-copy<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a></li>
				</ul>
			</div>

		</div>
	</div>

    <!-- ================== BEGIN core-js ================== -->
    <script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
    <script src="/webjars/highlightjs/11.5.0/highlight.min.js"></script>
    <script src="https://unpkg.com/highlightjs-copy/dist/highlightjs-copy.min.js"></script>
    <script> // App specific javascript goes here

$(function() {
	
	// A class with code content so that I don't have to pre-encode the content.
	const CODE = {

		// properties whose value are code/multiline strings of code content

		securityTest: 'alert("Attack!")',

		//c:url tag
		ctag: `c:url value="/resources/text.txt?a=1&b=2" var="url"/`,

		// spring tag
		stag: `spring:url value="/resources/text.txt?a=1&b=2" htmlEscape="true" var="springUrl" /`,

		controller: 
`@ResponseBody @PostMapping(value = "ajaxform")
public Object method(@RequestBody Form form)`,

		config: 
`spring.mvc.view.view-names=index,jsp/*

spring.thymeleaf.view-names=thymeleaf/*
spring.thymeleaf.template-resolver-order=1 `,

		insert: function(target, content) {
			// text() function will escape html
			$(target).text(content);
		},

		add: function(target, content) {
			// append() function will NOT escape html
			$(target).append('\n');
			$(target).append(this.escapeHtml(content));
		},

		// utility method to wrap string in brackets
		brackets: function(x) {
			return '<' + x + '>'
		},
		
		tags: function(tag, content) {
			return '<' + tag + '>' + content + '</' + tag + '>';
		},
		
		// Not sure this is completely tested but see the following for the discussion:
		// https://api.jquery.com/text/#text-function-function
		// https://stackoverflow.com/questions/6234773/can-i-escape-html-special-chars-in-javascript
		// https://www.w3.org/WAI/WCAG21/Techniques/client-side-script/SCR21#:~:text=The%20createTextNode()%20is%20used,attributes%20to%20the%20created%20elements.
		escapeHtml: function(unsafe) {
			return document.createTextNode(unsafe);
		},
		
		escapeHtmlOld: (unsafe) => {
		return unsafe
			.replaceAll('&', '&amp;')
			.replaceAll('<', '&lt;')
			.replaceAll('>', '&gt;')
			.replaceAll('"', '&quot;')
			.replaceAll("'", '&#039;');
		},
		
	}; // end CODE

	const LINKS = ${LINKS};
	LINKS.encode = function(selector, spec) {
		// <a href="#" target="_blank">JSP<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
		$( selector ).replaceWith( 
				$(document.createElement('a'))
				.prop({
					href: spec.href,
					target: spec.target,
					innerText: spec.text ,
				})
				.append('<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i>')
		);
	};
	
	// Update empty div's with code content
	CODE.insert('#codeTags', CODE.brackets(CODE.ctag));
	CODE.add('#codeTags', CODE.brackets(CODE.stag));
	CODE.add('#codeTags', CODE.tags('script', CODE.securityTest));
	$('#codeConfig').text(CODE.config);
	$('#codeController').text(CODE.controller);

	LINKS.encode('span.JSP', LINKS.JSP);
	LINKS.encode('span.Thymeleaf', LINKS.Thymeleaf);

	hljs.addPlugin(new CopyButtonPlugin());
	hljs.highlightAll();
});
</script>

</body>
</html>
