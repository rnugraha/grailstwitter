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
					<li ><a href="../status/index">Login</a></li>
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
		<div class="row">
			<div class="span3 light-blue-container rounded-corners">
				<!--Sidebar content-->
				<h4>Howdy<sec:ifLoggedIn> @<sec:username/></sec:ifLoggedIn>!</h4>
				<p>
					Welcome to Grails Twitter! A simple demo of Twitter look-a-like web application using Grails version
				2.2.0.
				</p>
				<sec:ifNotLoggedIn>
					<a href="../status/index" class="btn btn-primary" id="compose-tweet-btn">Say Something!</a>
				</sec:ifNotLoggedIn>
				<sec:ifLoggedIn>
					<div class="updatStatusForm">
						<g:formRemote url="[action: 'updateStatus']" update="messages" name="updateStatusForm"
						              onSuccess="document.updateStatusForm.message.value='';">

							<g:textArea name="message" value="" placeholder="Compose new tweet .." rows="5" id="message-txtarea"/><br/>
							<p>
								<label class="radio">
									<input type="radio" name="isPublic" id="optionsRadios1" value="Y" checked>
									Everyone can see it
								</label>
								<label class="radio">
									<input type="radio" name="isPublic" id="optionsRadios2" value="N">
									Only visible to me
								</label>
							</p>
							<g:submitButton name="Tweet This!" id="update_status_button" class="btn btn-info"/>

						</g:formRemote>
					</div>
				</sec:ifLoggedIn>

			</div>
			<div class="span5 light-border-container rounded-corners">
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