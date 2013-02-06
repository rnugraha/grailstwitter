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
	<meta name="layout" content="main-bootstrap"/>
	<title>Twitter Demo Homepage</title>
	<g:javascript library="jquery" plugin="jquery" />
	<g:javascript src="bootstrap.js" />
</head>
<body>
<h3>Tweets</h3>
<g:each in="${statusMessages}" status="i" var="messages">
	<div class="statusMessage" id="message_${messageCounter}">
		<strong>
			<span class="author">
				<g:link action="user" params="[username : messages.author.username, realName : messages.author.realName]">
					${messages.author.realName}
				</g:link>
			</span>
		</strong>
		<span>@${messages.author.username}</span>
		<div>${messages.message}</div>
		<div class="statusMessageTime"><prettytime:display date="${messages.dateCreated}" /></div>
	</div>
</g:each>

</body>
</html>