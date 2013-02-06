<html>
<head>
    <meta name="layout" content="main-bootstrap"/>
    <title>User Search Results</title>
</head>
<body>
        <g:each var="person" in="${searchResult?.results}" status="counter">
        <div id="search_result_${counter}">
            <span class="real_name">${person.realName}</span> <g:link id="${person.id}" action="follow" controller="status" class="btn btn-mini btn-success follow-btn">follow</g:link>
            </div>
        </g:each>
</body>
</html>