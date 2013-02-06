<%--
  Created by IntelliJ IDEA.
  User: rnugraha
  Date: 2/5/13
  Time: 7:57 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title><g:layoutTitle default="Grails Twitter"/></title>
	<link rel="stylesheet" href="${resource(dir:'css',file:'bootstrap.css')}" />
	<link rel="stylesheet" href="${resource(dir:'css',file:'grailstwitter.css')}" />
	<g:layoutHead />
	<g:javascript library="application" />
	<g:javascript />
</head>
<body>

	<!--Navigation Header-->
	<div class="navbar">
		<div class="navbar-inner">
			<a class="brand" href="../">Grails Twitter Home</a>
			<ul class="nav">
				<li ${controllerName.equals('home') ? 'class="active"' : ''}><a href="../home/index">Home</a></li>
				<sec:ifNotLoggedIn>
					<li class="active"><a href="../status/index" >Login</a></li>
				</sec:ifNotLoggedIn>
				<sec:ifLoggedIn>
					<li ${controllerName.equals('status') ? 'class="active"' : ''}><a href="../status/index">My Tweets</a></li>
					<li><g:link controller="logout">Logout</g:link></li>
				</sec:ifLoggedIn>
			</ul>
		</div>
	</div>

	<!--Container-->
	<div class="container-fluid">
		<div class="row ">
			<div class="span3 light-border-container rounded-corners">
				<!--Body content-->
				<g:layoutBody />
			</div>
		</div>
		<div id="push"></div>
	</div>

	<!--Footer-->
	<div id="footer"> Grails Twitter Demo 2013 </div>

</body>
</html>