<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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

    <!-- animate.css -->
	<link href="/webjars/animate.css/4.1.1/animate.min.css" rel="stylesheet" />

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

        .panel {
            border: 1px solid #333333;
            /* 
            border-radius: 9px;
            */
        }

        .panel.panel-inverse>.panel-heading {
            color: white;
            background: #20252a;
            /* 
            border-top-left-radius: 9px;
            border-top-right-radius: 9px;
            */
        }

        .panel.panel-inverse>.panel-footer {
            /* 
            border-bottom-left-radius: 9px;
            border-bottom-right-radius: 9px;
            */
        }

        /* Allow heading buttons to inline with heading via flex */
        .panel .panel-heading {
            display: flex;
            flex-wrap: nowrap;
        }
        /* 
            padding: .75rem .9375rem;
            border: none;
            align-items: center;
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
        */

        /* Allow heading buttons to inline with heading via flex */
        .panel .panel-heading .panel-title {
            flex: 1;
            margin: 0;
            line-height: 1.35;
        }

        /* Allow heading buttons to inline with heading via flex */
        .panel .panel-heading .panel-heading-btn {
            display: flex;
            align-items: center;
        }

        /* Allow heading buttons to inline with heading via flex */
        .panel .panel-heading .panel-heading-btn .btn-icon {
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .btn.btn-icon.btn-xs {
            width: 16px;
            height: 16px;
            font-size: 8px;
            line-height: 16px;
        }

        .btn.btn-icon {
            width: 28px;
            height: 28px;
            padding: 0;
            border: none;
            border-radius: 28px;
            font-size: 14px;
            text-align: center;
            line-height: 28px;
        }

        .btn.btn-xs {
            padding: 2px 6px;
        }

        /* Important for spacing of buttons */
        .panel .panel-heading .panel-heading-btn>a+a {
            margin-left: 5px;
        }

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

            <div class="col-md-8">

                <div class="panel panel-inverse">
                    <div class="panel-heading">
                        <h4 class="panel-title">Application Summary</h4>
                        <div class="panel-heading-btn">
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-default" data-toggle="panel-expand" data-tooltip-init="true"><i class="fa fa-expand"></i></a>
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-success" data-toggle="panel-reload" data-tooltip-init="true"><i class="fa fa-redo"></i></a>
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-warning xyz" data-toggle="panel-collapse" data-tooltip-init="true"><i class="fa fa-minus"></i></a>
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-danger" data-toggle="panel-remove"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">

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
                        <ul id="enhancements"> 
                            <li><a href="https://highlightjs.org/" target="_blank">highlight.js</a></li>
                            <li><a href="https://github.com/arronhunt/highlightjs-copy/" target="_blank">highlightjs-copy</a></li>
                            <li><a href="https://fontawesome.com/" target="_blank">FontAwesome</a></li>
                            <li>Ability to use both** <span class="JSP">JSP</span>
                                and <span class="Thymeleaf">Thymeleaf</span> templates using:
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
                            <li>Submit AJAX rich JSON data model via jQuery to Spring Controllers using: 
                                <pre><code id="codeController" class="language-java"></code></pre>
                            </li>
                            <li>Demonstrate the difference between 
                                the ${Spring}<a href="https://docs.spring.io/spring-framework/docs/4.2.x/spring-framework-reference/html/spring-tld.html" target="_blank">Spring</a> <code>spring:url</code> tag
                                and the ${JSTL}<a href="https://docs.oracle.com/javaee/5/tutorial/doc/bnake.html" target="_blank">JSTL</a> <code>c:url</code> tag: 
                                <pre><code id="codeTags" class="language-html"></code></pre>
                            </li>
                            <li>Demonstrate the use of c:out tag when passing Java values to javascript variables:
                                <pre><code id="codeCOut" class="language-javascript"></code></pre>
                            </li>
                        </ul>

                        <!--  
                                    <a class="btn btn-primary" href="#" role="button">
                                    Click Me</a>
                        -->
                    </div>
                </div>

            </div>

            <div class="col-md-4">

                <div class="panel panel-inverse">
                    <div class="panel-heading">
                        <h4 class="panel-title">Site Contents*</h4>
                        <div class="panel-heading-btn">
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-default" data-toggle="panel-expand" data-tooltip-init="true"><i class="fa fa-expand"></i></a>
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-success" data-toggle="panel-reload" data-tooltip-init="true"><i class="fa fa-redo"></i></a>
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-warning" data-toggle="panel-collapse" data-tooltip-init="true"><i class="fa fa-minus"></i></a>
                            <a href="javascript:;" class="btn btn-xs btn-icon btn-danger" data-toggle="panel-remove"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">

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
                    <div class="panel-footer">
                        <span>*<i>All pages open in a new tab/window</i></span>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <!-- ================== BEGIN core-js ================== -->
    <script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
    <script src="/webjars/highlightjs/11.5.0/highlight.min.js"></script>
    <script src="https://unpkg.com/highlightjs-copy/dist/highlightjs-copy.min.js"></script>

    <script src="/js/app.js"></script>
    <script src="/js/userinterface.js"></script>
    <script> // App specific javascript goes here

$(function() {

    <%-- 
    // A class with code content so that I don't have to pre-encode the content.
    --%>
    const CODE = {

        // properties whose value are code/multiline strings of code content

        securityTest: 'alert("Attack!")',

        // c:url tag
        ctag: `c:url value="/resources/text.txt?a=1&b=2" var="url"/`,

        // spring:url tag
        stag: `spring:url value="/resources/text.txt?a=1&b=2" htmlEscape="true" var="springUrl" /`,

        // c:out tag
        <%--  <![CDATA[ ]]>
        // couttag: `var nameonefixed = '<c:out value='${nameone}' />';`,
        // ... have to use the following escape sequences to display this properly without evaluating the jsp tag:
        --%>
        couttag: `var nameonefixed = '\u003cc:out value="\$\{nameone}" />';`,

        controller: `@ResponseBody @PostMapping(value = "ajaxform")
public Object method(@RequestBody Form form)`,

        config: `spring.thymeleaf.view-names=thymeleaf/*
spring.thymeleaf.template-resolver-order=1 

spring.mvc.view.view-names=index,jsp/*`,

        insert: function(target, content) {
            // text() function WILL escape html
            $(target).text(content);
        },

        add: function(target, content) {
            // append() function WILL NOT escape html
            $(target).append('\n');
            $(target).append(this.escapeHtml(content));
        },

        // utility method to wrap string in brackets
        // i.e. when x='a', then return '<a>'
        brackets: function(x) {
            return '<' + x + '>'
        },

        // utility method to generate a tag and content (to avoid JSP evaluation)
        // i.e. when tag='a' and content='b', then return '<a>b</a>''
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
    // This json data model comes from the controller. i.e. {
    //    "JSP":{"href":"https://docs.oracle.com/javaee/5/tutorial/doc/bnagy.html","text":"JSP","target":"_blank"},
    //    "Thymeleaf":{"href":"https://www.thymeleaf.org/doc/tutorials/3.0/thymeleafspring.html#views-and-view-resolvers-in-spring-mvc","text":"Thymeleaf","target":"_blank"}
    //    }

    // Given a jquery selector, replace its contents with a
    // link (examples follows) created from the link 'spec' object.
    // <a href="#" target="_blank">JSP<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i></a>
    LINKS.encode = function(selector, spec) {
        $( selector ).replaceWith( this.createLink(spec) );
    };

    // Create a link from the 'spec' object
    LINKS.createLink = function(spec) {
        let $el = $(document.createElement('a'));
        $el.prop({
            href: spec.href,
            target: spec.target,
            innerText: spec.text ,
        });
        this.decorate($el);
        return $el;
    };

    // Add the fontawesome decoration to the link element passed as a parameter
    LINKS.decorate = function($el) {
        $el.append('<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i>')
    };

    // Update empty div's with code content
    CODE.insert('#codeCOut', CODE.couttag);
    CODE.insert('#codeTags', CODE.brackets(CODE.ctag));
    CODE.add('#codeTags', CODE.brackets(CODE.stag));
    CODE.add('#codeTags', CODE.tags('script', CODE.securityTest));
    $('#codeConfig').text(CODE.config);
    $('#codeController').text(CODE.controller);

    // decorate links in enhancements list
    $('ul#enhancements li a')
    .append('<i class="ms-3 fa-xs fa-solid fa-arrow-up-right-from-square"></i>');

    // create/decorate links by selector
    LINKS.encode('span.JSP', LINKS.JSP);
    LINKS.encode('span.Thymeleaf', LINKS.Thymeleaf);

    hljs.addPlugin(new CopyButtonPlugin());
    hljs.highlightAll();

    // Install click handler for all panel collapse buttons
    $('a[data-toggle="panel-collapse"]').on('click', function(){
        let $el = $(this).closest('.panel').find('.panel-body');
        UI.slideToggle($el.get(0));
        <%-- 
        // The two lines above work; testing the bootstrap feature:
        //        $el.collapse('toggle');
        // The bootstrap feature works but is not as smooth.
        // There may need to be other considerations to make it smoother
        // but I will defer research.
        --%>

        <%-- 
        UI.animateCSS('.panel-body', 'rotateOut'); // 'slideOutUp'); // 'bounce'
        // This also "works" but is not the real desired effect;
        just an example of using other animation types.
        --%>

    });

    <%-- Remove the success element with animation --%>
    setTimeout( () => {
        let $target = $('.alert-success');

        UI.slideToggle($target.get(0), 1000);
        UI.animateCSS('.alert-success', 'fadeOutUp') // 'rotateOutUpLeft', 'fadeOutLeft')
        .then((message) => {
            $target.remove();
        });
    }, 2000);

});

</script>

</body>
</html>
