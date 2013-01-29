<html>
<head>
    <meta name="layout" content="main"/>
    <title>What Are You Doing?</title>
    <g:javascript library="jquery" plugin="jquery" />
</head>
<body>
    <h1>Search For People To Follow</h1>
    <div class="searchForm">
        <g:form controller="searchable" name="userSearchForm">
            <g:textField name="q" value=""/>
            <g:submitButton name="Search For Users" id="search_for_users_button"/>
        </g:form>
    </div>

    <h1>What Are You Doing?</h1>
    <div class="updatStatusForm">
        <g:formRemote url="[action: 'updateStatus']" update="messages" name="updateStatusForm"
                      onSuccess="document.updateStatusForm.message.value='';">
            <g:textArea name="message" value=""/><br/>
	        <div>
		        Show to public:
		        <input type="radio" name="isPublic" value="Y" checked="checked" /> Yes
		        <input type="radio" name="isPublic" value="N" /> No
	        </div>
            <g:submitButton name="Update Status" id="update_status_button"/>
        </g:formRemote>
    </div>
    <div id="messages">
        <twitter:renderMessages messages="${statusMessages}"/>
    </div>
</body>
</html>