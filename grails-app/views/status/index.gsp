<html>
<head>
    <meta name="layout" content="main-bootstrap"/>
    <title>What Are You Doing?</title>
    <g:javascript library="jquery" plugin="jquery" />
    <g:javascript src="bootstrap.js" />
</head>
<body>
    <div class="searchForm form-inline">
        <g:form controller="searchable" name="userSearchForm">
            <g:textField name="q" value="" placeholder="Type username to follow .."/>
            <g:submitButton name="Search For Users" id="search_for_users_button" class="btn"/>
        </g:form>
    </div>
    <div id="messages">
	    <h3>My Tweets</h3>
        <twitter:renderMessages messages="${statusMessages}"/>
    </div>
</body>
</html>