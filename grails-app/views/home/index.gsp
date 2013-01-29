<%--
  Created by IntelliJ IDEA.
  User: rnugraha
  Date: 1/29/13
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Twitter Demo Homepage</title>
	<g:javascript library="jquery" plugin="jquery" />
</head>
<body>
<h1>Welcome to Twitter Home</h1>
<g:each in="${statusMessages}" status="i" var="messages">
	<div class="statusMessage" id="message_${messageCounter}">
		<strong><span class="author">
			<g:link action="user" params="[username : messages.author.username, realName : messages.author.realName]">
				${messages.author.realName}
			</g:link>
		</span> said</strong>
		<span class="statusMessage">${messages.message}</span><br/>
		<div class="statusMessageTime">at <g:formatDate date="${messages.dateCreated}"/></div>
	</div>
</g:each>

</body>
</html>